class AppointmentsController < ApplicationController
  before_action :authenticate_user
  # GET /appointments
  def index
    @appointments = Appointment.all

    render json: @appointments
  end

  def create
    @appointment = Appointment.new(appointment_params)
    #@appointment.user_id = current_user.id

    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :user_id, :car_id)
  end
end
