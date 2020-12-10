class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:query].present?
      @events = Event.search_by_location(params[:query])
    else
      @events = Event.all
    end
    # @events.category = selected_category
    # events_by_category = @events.events_by_category(selected_category)
  end

  def show
    @booking = Booking.new
    @event = Event.find(params[:id])


     @markers = [{
      lat: @event.latitude,
      lng: @event.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { event: @event }),
      image_url: helpers.asset_url('https://res.cloudinary.com/kennedyodegaard/image/upload/v1607525650/Grouppinpoint_i8hcsk.png')
    }]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(set_event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(set_event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def set_event_params
    params.require(:event).permit(:title, :photo, :description, :location, :category, :start_time, :end_time, :capacity)
  end
end
