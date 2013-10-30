class UserMailer < ActionMailer::Base
  default from: "duke@seavillaz.com"

  def registration_confirmation user
    @user = user
    mail to: user.email, subject: "registered !!"
  end

end
