ActiveAdmin.register Message do
  config.batch_actions = true
  config.sort_order = 'name_asc'

  actions :index, :show

  filter :name
  filter :email
  filter :content

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :content
  end

  show do
    attributes_table do
      row :name
      row :email
      row :content
    end
  end

end
