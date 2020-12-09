class BookingsController < ApplicationController
    
    def show
        @booking = Booking.find(params[:id])
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
