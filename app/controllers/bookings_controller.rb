class BookingsController < ApplicationController

    def show
        @booking = Booking.find(params[:id])
        @event = @booking.event

         @markers = [{
          lat: @event.latitude,
          lng: @event.longitude,
          infoWindow: render_to_string(partial: "events/info_window", locals: { event: @event }),
          image_url: helpers.asset_url('https://res.cloudinary.com/kennedyodegaard/image/upload/v1607525650/Grouppinpoint_i8hcsk.png')
        }]
    end

    def create
        @booking = Booking.new(set_booking_params)
        @event = Event.find(params[:event_id])
        @booking.event = @event
        @booking.user = current_user
        if @booking.save
            redirect_to booking_path(@booking)
        else
            render "events/show"
        end


    end

    private

    def set_booking_params
        params.require(:booking).permit(:attending)
    end

end
