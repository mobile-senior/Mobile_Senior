class AddQuizToQuestionAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :question_answers, :quiz, foreign_key: true
  end
end
