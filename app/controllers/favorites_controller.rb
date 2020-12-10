class FavoritesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @favorite_events = current_user.all_favorites.map { |favorite| favorite.favoritable }
  end

  def create
    @event = Event.find(params[:event_id])
    current_user.favorite(@event)
    redirect_to events_path(anchor: "event_#{@event.id}")
  end

  def destroy
   @event = Event.find(params[:event_id])
   current_user.unfavorite(@event)
   redirect_to events_path(anchor: "event_#{@event.id}")
  end
end
