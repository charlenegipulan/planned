class ReflectionsController < ApplicationController

    before_action :authorize

    def edit
        @start_date = params[:id].to_date
        @start_date = @start_date.beginning_of_month
        @reflection = Reflection.find_by(user: current_user, month_date: @start_date)
        @reflection = Reflection.create(user: current_user, month_date: @start_date) if @reflection.nil?
    end

    def update
        @reflection = Reflection.find(params[:id]) 
        @reflection.update_attributes(reflection_params)
        redirect_to edit_reflection_path("#{@reflection.month_date}")
    end

    def reflection_params
        params.require(:reflection).permit(:top10, :learnings, :newthings, :people, :improvements, :progressions, :obstacles, :wrongs, :goals_achieved, :rewards_achieved)
    end



end