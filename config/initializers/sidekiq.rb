if Rails.env.development? ||Rails.env.test?
  Sidekiq.configure_server do |config|
    config.redis = { url: ENV['SIDEKIQ_URL'] }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: ENV['SIDEKIQ_URL'] }
  end
end
