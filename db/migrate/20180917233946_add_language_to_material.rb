class AddLanguageToMaterial < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :language, :string
  end
end
