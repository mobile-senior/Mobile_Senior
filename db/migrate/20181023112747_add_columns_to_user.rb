class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :answer_0, :text
    add_column :users, :answer_1, :text
    add_column :users, :answer_2, :text
    add_column :users, :answer_3, :text
  end
end
