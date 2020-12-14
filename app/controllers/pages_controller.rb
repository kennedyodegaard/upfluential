class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
  def dashboard
    @booking = current_user.bookings
    @events = current_user.events
  end
  

end
