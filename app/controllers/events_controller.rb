class EventsController < ApplicationController

  private

  def event_params
    params.require(:event).permit(:title, :description, :date,
    :start_time, :end_time, :address, :city, :state, :zipcode)
  end
  
end
