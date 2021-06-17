ActiveAdmin.register Question do
  config.batch_actions = true
  config.sort_order = 'id_asc'

  permit_params :statement, :image, :user_id, :skill_id

  actions :all, :except => [:destroy]

  filter :statement
  filter :image
  filter :user, collection: Educator.order(:name)
  filter :skill, collection: Skill.order(:title)

  index do
    selectable_column
    id_column
    column :statement
    column :image
    column :skill
    column :user
    column :created_at
    column :updated_at
  end

  show do
    attributes_table do
      row :statement
      row :image
      row :skill
      row :user
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs do
      f.input :statement
      f.input :image
      f.input :skill, collection: Skill.order(:title)
      f.input :user, collection: Educator.order(:name)
    end
    f.actions
  end

end
