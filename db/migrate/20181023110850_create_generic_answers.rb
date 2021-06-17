class CreateGenericAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :generic_answers do |t|
      t.text :statement
      t.text :answer
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
