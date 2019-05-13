Apipie.configure do |config|
  config.app_name                = "BankChallenge"
  config.api_base_url            = "/"
  config.doc_base_url            = "/apipie"
  config.translate               = false
  config.validate                = false
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/{[!concerns/]**/*,*}.rb"
end