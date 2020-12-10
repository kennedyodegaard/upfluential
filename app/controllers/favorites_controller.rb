class FavoritesController < ApplicationController
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
