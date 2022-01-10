class EnrollmentsController < ApplicationController
    def update
        @event= Event.find(params[:id])
        a=false
        @event.attendees.each do |attendee|
            if attendee.id==current_user.id
                a=true
            end
        end
        if a==false
            @event.attendees<<current_user
        end
        redirect_to @event
    end
end
