class UserMailer < ActionMailer::Base
  default from: "support@helpstart.co"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "HelpStart Password Reset"
  end

  def request_received(user)
    @user = user
    @url = "http://www.helpstart.co/myrequests"
    mail :to => user.email, :subject => "You Received a Help Request"
  end



end
