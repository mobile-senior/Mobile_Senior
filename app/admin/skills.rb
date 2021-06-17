ActiveAdmin.register Skill do
  config.batch_actions = true
  config.sort_order = 'title_asc'

  menu priority: 2, parent: 'Competências'

  permit_params :title, :skill_group_id

  actions :all, :except => [:destroy]

  filter :title
  filter :created_at
  filter :skill_group, collection: SkillGroup.order(:title)


  index do
    selectable_column
    id_column
    column :title
    column :skill_group
    column :created_at
    column :updated_at
  end

  show do
    attributes_table do
      row :title
      row :skill_group
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs do
      f.input :title
      f.input :skill_group, collection: SkillGroup.order(:title)
    end
    f.actions
  end

end
