class Current_eventsController < ApplicationController
  def new
  end

  def create
    @current_event = Current_event.build(current_event_params)

    if @current_event.save
      flash[:notice] = "success!"
      redirect_back fallback_location: :back
    else
      flash[:notice] = "Could not register. There was a problem"
      redirect_back fallback_location: :back
    end
  end


  private
    def current_event_params
      params.require(:current_event).permit(:user_id, :event_id)
    end
end