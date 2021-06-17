ActiveAdmin.register SkillGroup do
  config.batch_actions = true
  config.sort_order = 'title_asc'

  menu priority: 1, parent: 'Competências'

  permit_params :title

  actions :all, :except => [:destroy]

  filter :title
  filter :created_at

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    column :updated_at
  end

  show do
    attributes_table do
      row :title
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs do
      f.input :title
    end
    f.actions
  end

end
