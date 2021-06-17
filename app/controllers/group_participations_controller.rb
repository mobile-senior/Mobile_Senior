class GroupParticipationsController < ApplicationController
  before_action :set_group_participation, only: [:show, :edit, :update, :destroy]

  def index
    @group_participations = GroupParticipation.all
  end

  def show
  end

  def new
    @group_participation = GroupParticipation.new
  end

  def edit
  end

  def create
    @group_participation = GroupParticipation.new(group_participation_params)

    if @group_participation.save
      redirect_to @group_participation, notice: 'group_participation was successfully created.'
    else
      render :new
    end
  end

  def update
    if @group_participation.update(group_participation_params)
      redirect_to @group_participation, notice: 'group_participation was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @group_participation.destroy

    redirect_to group_participations_url, notice: 'group_participation was successfully destroyed.'
  end

  private
    def set_group_participation
      @group_participation = GroupParticipation.find(params[:id])
    end

    def group_participation_params
      params.fetch(:group_participation, {})
    end
end
