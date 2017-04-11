require 'csv'


class PagesController < ApplicationController
  def home

    # CONTROLLER
    #
    @i = 1
    @i += params[:index].to_i if params[:index]
    # @overall_oee = overall_oee(@i)
    # @predicted__oee = predicted__oee(@i)
    # @upper__range = upper__range(@i)
    # @lower__range = lower__range(@i)
    # @time = time(@i)
    @row = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[@i]
    # @overall_oee = overall_oee(i)
    respond_to do |format|
      format.html
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end


  def overall_oee(i)
    if i == 1
      overall_oee = []
      100.times do
        a = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i]
        value = a[9]
        overall_oee << value
        i += 1
        overall_oee.flatten
      end
    else
      # raise
      overall_oee = overall_oee[1..100]
      value = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i][9]
      overall_oee.append
      overall_oee.flatten
    end
    return overall_oee
  end

  def predicted__oee(i)
    i += 100
    if i == 101
      predicted_oee = []
      50.times do
        a = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i]
        value = a[10]
        predicted_oee << value
        i += 1
        predicted_oee.flatten
      end
    else
      predicted_oee = predicted_oee[1..49]
      value = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i][10]
      predicted_oee.append
      predicted_oee.flatten
    end
    return predicted_oee
  end

  def upper__range(i)
    i += 100
    if i == 101
     upper__range = []
      50.times do
        a = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i]
        value = a[11]
       upper__range << value
        i += 1
       upper__range.flatten
      end
    else
     upper__range =upper__range[1..49]
      value = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i][11]
     upper__range.append
     upper__range.flatten
    end
    return upper__range
  end

  def lower__range(i)
    i += 100
    if i == 101
     lower__range = []
      50.times do
        a = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i]
        value = a[12]
       lower__range << value
        i += 1
       lower__range.flatten
      end
    else
     lower__range =lower__range[1..49]
     value = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i][12]
     lower__range.append
     lower__range.flatten
    end
    return lower__range
  end

  def time(i)
    if i == 1
     time = []
      150.times do
        a = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i]
        value = a[0]
       time << value
        i += 1
       time.flatten
      end
    else
     time =time[1..149]
     value = CSV.read("#{Rails.root}/lib/assets/Final_Data1.csv")[i][0]
     time.append
     time.flatten
    end
    return time
  end

end
