class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def show
        @event = Event.find_by(id: params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        raise params.inspect
    end

    def edit
    end

    def update
    end
end