class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)

    if @Group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  def update
    if @group.update(group_params)
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @group.destroy

    redirect_to groups_url, notice: 'Group was successfully destroyed.'
  end

  def create_group_with_users
    list_of_user_ids = params[:group][:seniors].map{|id| id.to_i}
    title = params[:group][:title]

    new_group = Group.create(title: title, user: current_user)

    list_of_user_ids.each do |user_id|
      if user_id > 0
        user = User.find(user_id)
        GroupParticipation.create(group: new_group, user: user)
      end
    end

    redirect_to educator_home_path, notice: t('controller_messages.group_success')
  end

  def update_users_of_group
    list_of_users = params[:group][:seniors].map{|id| id.to_i}
    group_id = params[:group][:group_id]
    title = params[:group][:title]

    group = Group.find(group_id)
    users_of_group = group.users

    # update group title
    group.title = title
    group.save

    # Remove users
    users_of_group.each do |user|
      if !list_of_users.include?(user.id)
        group_participation = GroupParticipation.where(group: group, user: user).first
        group_participation.destroy
      end
    end

    # Add users
    list_of_users.each do |user_id|
      if user_id > 0
        user = User.find(user_id)

        user_participation_in_group = GroupParticipation.where(group: group, user: user)

        if user_participation_in_group.count == 0
          GroupParticipation.create(group: group, user: user)
        end
      end
    end

    redirect_to educator_home_path, notice: t('controller_messages.group_update')
  end

  private
    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:group_id, :user_id, :title, :seniors[])
    end
end
