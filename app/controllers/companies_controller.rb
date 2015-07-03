class CompaniesController < ApplicationController
  def index
    @text = "Company list:"
    @companies = Company.order("name ASC")
  end

  def new
    @company = Company.new 
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      # flash[:notice] = "#{@company.title} has been successfully submitted."
      redirect_to admin_path
    else
      # flash.now[:alert] = "Please make sure all fields are filled in correctly :)"
      render "new"
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.assign_attributes(company_params)

    if @company.save
      # flash[:notice] = "#{@company.title} has been successfully submitted."
      redirect_to admin_path
    else
      # flash.now[:alert] = "Please make sure all fields are filled in correctly :)"
      render "edit"
    end
  end

  def destroy
    company = Company.find(params[:id]).destroy
    # flash[:notice] = "#{auction.title} has been deleted."
    redirect_to admin_path
  end

  def show
    @company = Company.find(params[:id])
  end

  private 

  def company_params
    params.require(:company).permit(
      :name,
      :email,
      :phone,
      :contact_name,
      :created_at,
      :updated_at
    )
  end
end