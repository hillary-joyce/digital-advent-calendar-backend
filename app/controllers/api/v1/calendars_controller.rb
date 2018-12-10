class Api::V1::CalendarsController < ApplicationController
  def index
    @calendars = Calendar.all
    render json: @calendars
  end

  def show
    @calendar = Calendar.find(params[:id])
    render json: @calendar
  end

  def create
    @calendar = Calendar.create(calendar_params)
    if @calendar
      render json: @calendar
    end
  end



  def calendar_params
  params.require(:calendar).permit(:start_date, :end_date, :title)
  end
end
