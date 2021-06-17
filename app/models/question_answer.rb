class QuestionAnswer < ApplicationRecord
  validates_presence_of :question, :user, :answer

  belongs_to :question
  belongs_to :user
  belongs_to :quiz

  def question_statement
    return Question.find(self.question_id).statement
  end
end
