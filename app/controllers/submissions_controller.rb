class SubmissionsController < ApplicationController
  def submit 
    @car = Car.find_by_code(params[:code])
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      # flash[:notice] = "#{@company.title} has been successfully submitted."
      redirect_to root_path
    else
      # flash.now[:alert] = "Please make sure all fields are filled in correctly :)"
      render "submit"
    end
  end

  private

  def submission_params
    params.require(:submission).permit(
      :name,
      :email,
      :phone,
      :complaint
    )
  end
end

