class AddSkillToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :skill, foreign_key: true
  end
end
