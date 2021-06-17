class RecommendationsController < ApplicationController
  before_action :set_recommendation, only: [:show, :edit, :update, :destroy]

  def index
    @recommendations = Recommendation.all
  end

  def show
  end

  def new
    @recommendation = Recommendation.new
  end

  def edit
  end

  def create
    @recommendation = Recommendation.new(recommendation_params)

    if @recommendation.save
      redirect_to @recommendation, notice: 'recommendation was successfully created.'
    else
      render :new
    end
  end

  def update
    if @recommendation.update(recommendation_params)
      redirect_to @recommendation, notice: 'recommendation was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @recommendation.destroy

    redirect_to recommendations_url, notice: 'recommendation was successfully destroyed.'
  end

  def recommend_material_to_user
    materials_id_list = params[:recommendation][:materials].map{|id| id.to_i}
    user_id = params[:recommendation][:user_id]
    title = params[:recommendation][:title]
    content = params[:recommendation][:content]

    recommendation = Recommendation.create(user: User.find(user_id), title: title, content: content, quiz: Quiz.first)

    materials = []
    materials_id_list.each do |material_id|
      if material_id > 0
        materials.push(Material.find(material_id))
      end
    end

    recommendation.materials << materials

    redirect_to educator_home_path, notice: t('controller_messages.material_recommendation')
  end

  private
    def set_recommendation
      @recommendation = Recommendation.find(params[:id])
    end

    def recommendation_params
      params.require(:recommendation).permit(:user_id, :title, :content, :materials[])
    end
end
