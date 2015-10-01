class UserMailer < ApplicationMailer
  default from: "notification@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.thankyou_email.subject
  #
  def thankyou_email(user)
    @user = user
    @url = 'http://http://localhost:3000/'

    mail(to: @user.email, subject: 'Thank you for signing up with this app!')
  end
end