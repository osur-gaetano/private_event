class AttendeeEventsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_event
  before_action :find_events, only: [:new]

  def index
    @attended_events = AttendeeEvent.all
  end

  def new
    @attendee_event = AttendeeEvent.new
  end

  # def show
  #   @attendee_event = AttendeeEvent.find(attendee_event_params)
  # end

  def create
    @attendee_event = @event.attendee_events.build(attendee_id: current_user.id)

    if @attendee_event.save
      redirect_to @event, notice: 'You are now attending this event.'
    else
      render :new
    end
  end

  def destroy
    @attendee_event = @event.attendee_events.find_by(attendee_id: current_user.id)

    if @attendee_event
      @attendee_event.destroy
      redirect_to @event, notice: 'You are no longer attending this event.'
    else
      redirect_to @event, alert: 'You are not attending this event.'
    end
  end


  private
    def find_event
      @event = Event.find(params[:event_id])
    end

    def find_events
      @events = Event.all
    end

    def attendee_event_params
      params.require(:attendee_event).permit(:attended_event_id)
    end

end
