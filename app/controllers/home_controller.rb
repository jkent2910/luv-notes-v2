class HomeController < ApplicationController

  def index
    NoteNotificationMailer.test_email.deliver_later
  end

  def dashboard
  end
end
