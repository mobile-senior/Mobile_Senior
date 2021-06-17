class SkillGroupResult < ApplicationRecord
  validates_presence_of :skill_group, :quiz

  belongs_to :skill_group
  belongs_to :quiz
end
