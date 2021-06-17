class SkillResult < ApplicationRecord
  validates_presence_of :skill, :quiz

  belongs_to :skill
  belongs_to :quiz
end
