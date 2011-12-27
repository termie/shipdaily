Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GH_ID'], ENV['GH_SECRET']
end