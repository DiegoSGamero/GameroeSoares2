class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
  end

  def create

  end

  private

  def property_params
    params.require(:property).permit(:date_time, :patient_id, :therapist_id, :start_time, :end_time)
  end
end
