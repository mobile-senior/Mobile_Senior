class QuestionAnswersController < ApplicationController
  before_action :set_question_answer, only: [:show, :edit, :update, :destroy]

  include ApplicationHelper

  def index
    @question_answers = QuestionAnswer.all
  end

  def show
  end

  def new
    init_quiz = params[:init_quiz]
    @quiz_id = params[:quiz_id]

    questions_to_answer = session[:questions_to_answer]

    # DEBUG
    @session_q1 = session[:questions_to_answer]
    @session_q2 = session[:answered_questions]

    @question_answer = QuestionAnswer.new

    if init_quiz
      number_of_questions = Question.all.count
      session[:questions_to_answer] = (1..number_of_questions).to_a
      session[:answered_questions] = []
      new_quiz = Quiz.create(user: current_user)
      @quiz_id = new_quiz.id
    end

    if questions_to_answer.size > 0
      @question = Question.find(params[:q_id])
    else
      quiz = Quiz.find(@quiz_id)
      final_actions(quiz, current_user)

      redirect_to show_quiz_result_path(quiz_id: @quiz_id), notice: t('controller_messages.quiz_end')
    end
  end

  def edit
  end

  def create
    @question_answer = QuestionAnswer.new(question_answer_params)

    if @question_answer.save
      question_id = @question_answer.question.id
      session[:questions_to_answer].delete(question_id)
      session[:answered_questions].push(question_id)

      new_q_id = session[:questions_to_answer].sample
      new_quiz_id = @question_answer.quiz.id
      redirect_to new_question_answer_path(q_id: new_q_id, quiz_id: new_quiz_id), notice: t('controller_messages.answer_saved')
    else
      render :new
    end
  end

  def update
    if @question_answer.update(question_answer_params)
      redirect_to @question_answer, notice: 'question_answer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @question_answer.destroy

    redirect_to question_answers_url, notice: 'question_answer was successfully destroyed.'
  end

  private
    def final_actions(quiz, current_user)
      # finish complete quiz
      quiz.complete = true
      quiz.save

      answers = quiz.question_answers

      skill_results = []

      quiz.skills.each do |skill|
        result = 0

        selected_answers = answers.select{ |answer| answer.question.skill == skill }

        result = selected_answers.map(&:answer).reduce { |result, answer_value|
          result + answer_value }.to_f/selected_answers.size

        new_skill_result = SkillResult.create(value: result, quiz: quiz, skill: skill)
        skill_results.push(new_skill_result)
      end

      skill_group_results_ids = []

      quiz.skill_groups.each do |skill_group|
        result = 0

        selected_skill_results = skill_results.select{ |skill_r| skill_r.skill.skill_group == skill_group }

        result = selected_skill_results.map(&:value).reduce { |result, skill_value|
          result + skill_value }.to_f/selected_skill_results.size

        new_skill_group_result = SkillGroupResult.create(value: result, quiz: quiz, skill_group: skill_group)
        skill_group_results_ids.push(new_skill_group_result.id)
      end

      RecommendationWorker.perform_async({
        skill_group_results_ids: skill_group_results_ids,
        quiz_id: quiz.id,
        user_id: current_user.id
      })
    end

    def set_question_answer
      @question_answer = QuestionAnswer.find(params[:id])
    end

    def question_answer_params
      params.require(:question_answer).permit(:user_id, :question_id, :answer, :q_id, :quiz_id)
    end
end
