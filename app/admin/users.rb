ActiveAdmin.register User do
  config.batch_actions = true
  config.sort_order = 'name_asc'

  menu priority: 2, parent: 'Usuários'

  permit_params :name, :email, :password, :password_confirmation, :type,
  :active, :participate, :birthday, :gender, :phone, :country, :state,
  :city, :education, :educational_institution

  actions :all, :except => [:destroy]

  filter :name
  filter :email
  filter :created_at

  controller do
    def index
      if params[:activate]
        participate = params[:participate]
        user = User.find(params[:user_id])
        participation = MobileParticipation.create(user: user, participate: participate)

        flash[:notice] = 'Usuário ativado!'
      end
      super
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :type
    column "Ativar Usuário" do |u|
      link_to 'Ativar usuário', :action => :index, user_id: u.id, participate: true, activate: true
    end
    column :participate do |u|
      participations = u.mobile_participations

      if participations.count == 0
        false
      else
        participations.last.participate
      end
    end
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
  end

  show do
    attributes_table do
      row :name
      row :email
      row :type
      row :participate do |u|
        participations = u.mobile_participations

        if participations.count == 0
          false
        else
          participations.last.participate
        end
      end
      row :birthday
      row :gender
      row :phone
      row :country
      row :state
      row :city
      row :education
      row :educational_institution
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
      f.input :birthday
      f.input :gender
      f.input :phone
      f.input :state
      f.input :city
      f.input :education
      f.input :educational_institution
    end
    f.actions
  end

end
