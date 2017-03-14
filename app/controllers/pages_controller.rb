require 'csv'
class PagesController < ApplicationController

  def home

    # CONTROLLER
    #
    @i = 1
    @i += params[:index].to_i if params[:index]
    @row = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[@i]
  end
end
