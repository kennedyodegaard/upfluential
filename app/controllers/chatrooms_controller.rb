class ChatroomsController < ApplicationController
    
    def index
        @chatrooms = current_user.chatrooms.to_a
        current_user.events.each do |event|
         @chatrooms << event.chatroom
        end

    end
    
    def show
        @event = Event.find(params[:event_id])
        @chatroom = @event.chatroom
        @message = Message.new
    end
    
end
