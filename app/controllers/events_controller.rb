class EventsController < ApplicationController

  def show
     @event = Event.find(params[:id])
   end

   def new
     @event = Event.new
   end

   def edit
     @event = Event.find(params[:id])
   end

   def create
     @event = Event.new(event_params)
     if @event.save
       redirect_to root_path, notice: "Great job! You added an event!"
     else
       render :new, notice: "Please fill out the !"
     end
   end

   def update
     @event = Event.find(params[:id])
     if @event.update(event_params)
       redirect_to @event, notice: "You successfully updated this event"
     else
       render 'edit'
     end
   end

   def destroy
     @event = Event.find(params[:id])
     @event.destroy
     redirect_to root_path
   end

  private

  def event_params
    params.require(:event).permit(:avatar, :title, :description, :date,
    :start_time, :end_time, :address, :city, :state, :zipcode)
  end

end
