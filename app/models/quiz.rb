class Quiz < ApplicationRecord
  belongs_to :user
  has_many :question_answers
  has_many :recommendations

  def skill_groups
    self.question_answers.map{ |question_answer|
      question_answer.question.skill.skill_group }.uniq
  end

  def skills
    self.question_answers.map{ |question_answer|
      question_answer.question.skill }.uniq
  end

  def skill_group_result(skill_group)
    SkillGroupResult.where(quiz: self, skill_group: skill_group).first
  end

  def skill_result(skill)
    SkillResult.where(quiz: self, skill: skill).first
  end
end
