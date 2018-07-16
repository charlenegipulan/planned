class EntriesController < ApplicationController

    def index
        @start_date = Date.today.beginning_of_week
        @offset = params[:offset] ? params[:offset].to_i : 0
        @start_date = @start_date.advance(weeks: @offset)
        @end_date  = @start_date.advance(days: 6) 
        @entries = current_user.entries.where('entry_date BETWEEN ? AND ?', @start_date, @end_date)
    end

    def new
    end

end

