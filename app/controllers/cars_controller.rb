class CarsController < ApplicationController
  before_action :authenticate_user, except: [:index]

  def index
    @cars = Car.all

    render json: @cars
  end
end
