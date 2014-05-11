OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1444532309127731', '3c163facc206f9180566f1e5cd29411c', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end