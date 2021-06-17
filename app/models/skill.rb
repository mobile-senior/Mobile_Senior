class Skill < ApplicationRecord
  validates_presence_of :skill_group

  has_many :questions

  belongs_to :skill_group
end
