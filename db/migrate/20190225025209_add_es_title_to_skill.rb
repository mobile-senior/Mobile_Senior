class AddEsTitleToSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :es_title, :string
  end
end
