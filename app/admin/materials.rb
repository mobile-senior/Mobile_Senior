ActiveAdmin.register Material do
  config.batch_actions = true
  config.sort_order = 'title_asc'

  permit_params :title, :content, :description, :type, :language, :user_id

  actions :all, :except => [:destroy]

  filter :title
  filter :content
  filter :description
  filter :type
  filter :language
  filter :created_at
  filter :updated_at
  filter :user, collection: Educator.order(:name)

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :type
    column :language
    column :user
    column :created_at
  end

  show do
    attributes_table do
      row :title
      row :content
      row :description
      row :type
      row :language
      row :user
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs do
      f.input :title
      f.input :content
      f.input :description
      f.input :type
      f.input :language
      f.input :user, collection: Educator.order(:name)
    end
    f.actions
  end

end
