class Api::V1::CalendarsController < ApplicationController
  def index
    @calendars = Calendar.all
    render json: @calendars
  end
end
