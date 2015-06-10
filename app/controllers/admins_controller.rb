class AdminsController < ApplicationController
  def index
    @text = "Company list:"
    @companies = Company.order("name ASC")
  end
end