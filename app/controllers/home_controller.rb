class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:info, :credits, :index]
  before_action :check_participation!, only: :senior

  def index
    redirect_to new_user_session_path, notice: t('controller_messages.greetings')
  end

  def educator
    @seniors = Senior.all
    @groups = current_user.groups
    @user = User.find(current_user.id)
    @materials = Material.where(user: current_user)
  end

  def senior
    clean_empty_quiz
    clean_and_set_session_questions

    @q_id = session[:questions_to_answer].sample

    @quiz_list = Quiz.where(user: current_user)
    @user = User.find(current_user.id)
    @recommendations = Recommendation.where(user: current_user)

    participations = current_user.mobile_participations

    if participations.count == 0
      @participate = false
    else
      @participate = true
    end
  end

  def credits
  end

  def info
    @message = Message.new
  end

  def show_quiz_result
    sleep 3
    @quiz = Quiz.find(params[:quiz_id])
  end

  def participate
    participate = params[:participate]
    user = User.find(params[:user_id])
    participation = MobileParticipation.create(user: user, participate: participate)

    if participation.participate
      new_q_id = session[:questions_to_answer].sample
      redirect_to new_question_answer_path(init_quiz: true, q_id: new_q_id), notice: t('controller_messages.participation_answer_q')
    else
      sign_out(current_user)
      redirect_to new_user_session_path, notice: t('controller_messages.participation_answer')
    end
  end

  private
  def clean_empty_quiz
    user_quiz = Quiz.where(user: current_user)

    user_quiz.each do |quiz|
      quiz_answers = quiz.question_answers

      if quiz_answers.count == 0
        quiz.destroy
      end
    end
  end

  def clean_and_set_session_questions
    session[:questions_to_answer] = []
    session[:answered_questions] = []

    number_of_questions = Question.all.count
    session[:questions_to_answer] = (1..number_of_questions).to_a
  end

  def check_participation!
    participations = current_user.mobile_participations

    if participations.count > 0
      participate = participations.last.participate

      if !participate
        sign_out(current_user)
        redirect_to new_user_session_path, notice: t('controller_messages.disabled_user')
      end
    end
  end
end
