ActionMailer::Base.smtp_settings = {
:address => ‘smtp.sendgrid.net’,
:port => ’587′,
:authentication => :plain,
:user_name => ENV['app12784085@heroku.com'],
:password => ENV['rx5j3oqo'],
:domain => ‘heroku.com’
}
ActionMailer::Base.delivery_method = :smtp