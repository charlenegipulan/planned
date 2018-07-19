class ReflectionsController < ApplicationController

    def edit
        @start_date = Date.today.beginning_of_week
        date = params[:id]
        date = date.to_date
        date = date.beginning_of_month
        @reflection = Reflection.find_by(month_date: @date)
        @reflection = Reflection.create(user: current_user, month_date: date) if @reflection.nil?
    end

    def update
        @reflection = Reflection.find(params[:id]) 
        @reflection.update_attributes(reflection_params)
        redirect_to edit_reflection_path("#{@reflection.month_date}")
    end

    def reflection_params
        params.require(:reflection).permit(:top10, :learnings, :newthings, :people, :improvements, :progressions, :obstacles, :wrongs)
    end



end