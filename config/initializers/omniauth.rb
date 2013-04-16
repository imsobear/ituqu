Rails.application.config.middleware.use OmniAuth::Builder do
  provider :weibo, '2673549799', 'ab2d66165dd161bd7b00a1fb5b4c65d9'
end