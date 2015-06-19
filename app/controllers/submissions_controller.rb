class SubmissionsController < ApplicationController
  def submit 
    @car = Car.find_by_code(params[:code])
  end
end