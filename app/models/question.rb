class Question < ApplicationRecord
  validates_presence_of :user, :skill

  belongs_to :user
  belongs_to :skill

  has_many :question_answers
end
