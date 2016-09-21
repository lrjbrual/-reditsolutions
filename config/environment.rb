# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'netstarted.com',
  :enable_starttls_auto => true
}

DEFAULT_META = YAML.load_file(Rails.root.join('config/meta.yml'))

Rails.application.initialize!