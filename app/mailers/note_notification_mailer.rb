class NoteNotificationMailer < ApplicationMailer

  def notification_email(user, luver, email)
    @user = user
    @luver = luver
    @email = email

    mail(to: @email, from: 'jkent2910@gmail.com', subject: "You have a new Luv Note waiting")
  end
end
