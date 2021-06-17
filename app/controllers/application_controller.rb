class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  protected

  def after_sign_in_path_for(resource)
    # Master Login treatment
    if resource.is_a?(User)
      if current_user.type == 'Educator'
        educator_home_path
      else
        senior_home_path
      end
    elsif resource.is_a?(Master)
      admin_dashboard_path(resource)
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [
        :name,
        :birthday,
        :gender,
        :phone,
        :country,
        :state,
        :city,
        :education,
        :educational_institution,
        :type,
        :active,
        :participate,
        :answer_0,
        :answer_1,
        :answer_2,
        :answer_3,
      ])
  end
end
