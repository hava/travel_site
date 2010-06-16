class HolidaysController < ApplicationController
  def new
    @holiday = Holiday.new
    @title = "Create Holiday"
  end

  def show
    @holiday = Holiday.find(params[:id])
    @title = "Show Holidays"
  end

  def create
    @holiday = Holiday.new(params[:holiday])
    if @holiday.save
      # Handle a successful save.
    else
      @title = "Create Holiday"
      render 'new'
    end
  end
end
