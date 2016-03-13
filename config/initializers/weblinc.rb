Weblinc.configure do |config|

  # Basic site info
  config.site_name = 'Video'
  config.domain = 'video.dev'
  config.email_to = 'customerservice@video.dev'
  config.email_from = 'noreply@video.dev'

  # Set elasticsearch URL
  config.elasticsearch = Rails.application.secrets.elasticsearch

  # Set Redis connection
  config.redis = Rails.application.secrets.redis
end
