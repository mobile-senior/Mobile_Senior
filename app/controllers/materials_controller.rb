class MaterialsController < ApplicationController

  before_action :set_material, only: [:show, :edit, :update, :destroy]

  def index
    @materials = Material.where(user: current_user).order('updated_at desc')
  end

  def show
  end

  def new
    @material = Material.new
  end

  def edit
  end

  def create
    @material = Material.new(material_params)

    if @material.save
      redirect_to materials_url, notice: t('controller_messages.material_created')
    else
      render :new
    end
  end

  def update
    if @material.update(material_params)
      redirect_to materials_url, notice: t('controller_messages.material_updated')
    else
      render :edit
    end
  end

  def destroy
    @material.destroy

    redirect_to materials_url, notice: t('controller_messages.material_deleted')
  end

  private
    def set_material
      @material = Material.find(params[:id])
    end

    def material_type
      if @material
        return @material.type
      else
        return ''
      end
    end

    def material_params
      params.require(
        params[:type] == "EducatorMaterial" || material_type == "EducatorMaterial" ?
        :educator_material : :material
      ).permit(:title, :content, :description, :type, :user_id, :language, :alt_lang_title, :alt_lang_description)
    end
end
