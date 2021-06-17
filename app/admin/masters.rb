ActiveAdmin.register Master do
  config.batch_actions = true
  config.sort_order = 'name_asc'

  menu priority: 1, parent: 'Usuários'

  permit_params :name, :email, :password, :password_confirmation

  actions :all, :except => [:destroy]

  filter :name
  filter :email
  filter :created_at

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
  end

  show do
    attributes_table do
      row :name
      row :email
      row :current_sign_in_at
      row :sign_in_count
      row :created_at
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
