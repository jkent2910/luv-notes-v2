class NoteNotificationMailer < ApplicationMailer

  def notification_email
    mail(to: "jkent2910@gmail.com", subject: "You have a new Luv Note")
  end
end
