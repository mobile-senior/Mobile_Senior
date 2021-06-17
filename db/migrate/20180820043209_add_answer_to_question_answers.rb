class AddAnswerToQuestionAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :question_answers, :answer, :integer
  end
end
