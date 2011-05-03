class UserMailer < ActionMailer::Base
  def registration_confirmation(user)
    recipients user.email
    from       "sbeall@scires.com"
    subject    "Thank you for registering!"
    body       "This is a confirmation that you have registered for the twitter copy site.  Hope you enjoy!"
  end
end
