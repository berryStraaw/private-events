class EventsController < ApplicationController
    def index
        @events= Event.all.order('date')
    end

    def new
        @event=Event.new
    end

    def show
        @event=Event.find(params[:id])
    end

    def create
        @event= current_user.events.build(event_params)
        

        respond_to do |format|
            if @event.save
              format.html { redirect_to root_path, notice: "Post was successfully created." }
              format.json { render :show, status: :created, location: @post }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @post.errors, status: :unprocessable_entity }
            end
          end
    end


    private

    def event_params
        params.require(:event).permit(:title,:body, :date, :status)
    end
end
