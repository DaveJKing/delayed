class UserMailer < ApplicationMailer

  default from: 'djking@glam.ac.uk'
  
  def welcome_email(user)
    
  
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site delayed')
  end

end

