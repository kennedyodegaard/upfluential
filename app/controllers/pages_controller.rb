class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
  def dashboard
    @booking = current_user.bookings
    @upcoming_events = current_user.booked_events.where("start_time > ?", Time.now)
    @completed_events = current_user.booked_events.where("end_time < ?", Time.now)
    @events = Event.all
    @user_events = @events.select do |event|
      event.user_id == current_user.id
    end
    # @user_events = current_user.events.where(current_user.id == user_id)
  end


end
