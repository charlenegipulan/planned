class ReflectionsController < ApplicationController


    def edit
        @start_date = Date.today.beginning_of_week
        date = params[:id]
        date = date.to_date
        date = date.beginning_of_month
        @reflection = Reflection.find_by(month_date: @date)

    end


end