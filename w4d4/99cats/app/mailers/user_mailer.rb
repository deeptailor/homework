class UserMailer < ActionMailer::Base
  default from: "everybody@appacademy.io"

  def welcome_email(user)
    @user = user
    @url  = 'localhost:3000/cats'
    mail(to: user.username, subject: 'Welcome to My Purrrfect Site')
  end
end
