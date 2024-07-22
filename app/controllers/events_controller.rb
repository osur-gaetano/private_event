class EventsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end


  def create

    @event = current_user.created_events.build(event_params)
    if @event.save
      flash[:success] = "Object successfully created"
      redirect_to @event
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private
    def event_params
      params.require(:event).permit(:location, :title, :about, :event_date)
    end
end
