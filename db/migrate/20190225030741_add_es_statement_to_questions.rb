class AddEsStatementToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :es_statement, :text
  end
end
