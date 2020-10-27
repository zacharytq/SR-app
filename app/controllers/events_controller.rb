class EventsController < ApplicationController

    def index
        @events = cleared_objects(Event.all)
    end

    def show
        @event = Event.find_by(id: params[:id])
    end

    def new
        @event = Event.new
        @event.people.build
    end

    def create
        @event = Event.new(event_params)
        if @event.valid?
            @event.save
            redirect_to event_path(@event)
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    private
    def event_params
        params.require(:event).permit(:name, :location, :date, :description, :security_clearance, :person_ids => [], people_attributes: [:first_name, :last_name, :bio])
    end

end