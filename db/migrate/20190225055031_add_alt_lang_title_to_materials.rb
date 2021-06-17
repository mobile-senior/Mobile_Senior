class AddAltLangTitleToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :alt_lang_title, :string
  end
end
