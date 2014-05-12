OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1444532309127731', '3c163facc206f9180566f1e5cd29411c',:scope => 'email,user_birthday,publish_actions', :image => 'access_token.info.image', :image_size => 'small'
end