ActionMailer::Base.delivery_method = :smtp 
ActionMailer::Base.smtp_settings = {
  :address
  :port
  :authentication
  :user_name
  :password
  :domain
  :enable_starttls_auto => true
}
