class RecommendationWorker
  include ApplicationHelper
  include Sidekiq::Worker
  sidekiq_options queue: 'default', retry: true

  def perform(params)
    if params
      params = params.with_indifferent_access
    end

    recommendation_factory = RecommendationFactory.new(
                                params[:skill_group_results_ids],
                                params[:quiz_id],
                                params[:user_id])

    recommendation_factory.recommend_default_materials_to_user
  end
end
