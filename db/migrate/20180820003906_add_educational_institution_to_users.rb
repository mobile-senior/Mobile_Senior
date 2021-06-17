class AddEducationalInstitutionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :educational_institution, :string
  end
end
