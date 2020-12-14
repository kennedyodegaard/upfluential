class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
  def dashboard
    @booking = current_user.bookings
    @upcoming_events = current_user.events.where("start_time > ?", Time.now)
    @completed_events = current_user.events.where("end_time < ?", Time.now)
  end
  

end
