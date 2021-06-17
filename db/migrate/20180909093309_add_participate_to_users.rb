class AddParticipateToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :participate, :boolean
  end
end
