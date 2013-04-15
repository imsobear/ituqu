Rails.application.config.middleware.use OmniAuth::Builder do
  provider :weibo, '4129056994', '62d85e3022c00b3b8f458a0e72c38a10'
end