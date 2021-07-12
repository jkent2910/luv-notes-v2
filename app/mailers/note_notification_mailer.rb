class NoteNotificationMailer < ApplicationMailer

  def test_email
    mail(to: "jkent2910@gmail.com", subject: "Test")
  end
end
