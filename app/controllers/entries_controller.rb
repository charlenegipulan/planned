class EntriesController < ApplicationController

    def index
        @start_date = Date.today.beginning_of_week
        @offset = params[:offset] ? params[:offset].to_i : 0
        @start_date = @start_date.advance(weeks: @offset)
        @end_date  = @start_date.advance(days: 6)
        @cal_cat_id = Category.find_by(name: 'calendar-item').id
        @goal_id = Category.find_by(name: 'goal').id
        @priority_id = Category.find_by(name: 'priority').id
        @work_to_do_id = Category.find_by(name: 'work-to-do').id
        @personal_to_do_id = Category.find_by(name: 'personal-to-do').id
        @idea_id = Category.find_by(name: 'idea').id
        @note_id = Category.find_by(name: 'note').id
        @mon = current_user.entries.where(category_id: @cal_cat_id, entry_date: @start_date)
        @tue = current_user.entries.where(category_id: @cal_cat_id, entry_date: @start_date.advance(days: 1))
        @wed = current_user.entries.where(category_id: @cal_cat_id, entry_date: @start_date.advance(days: 2))
        @thu = current_user.entries.where(category_id: @cal_cat_id, entry_date: @start_date.advance(days: 3))
        @fri = current_user.entries.where(category_id: @cal_cat_id, entry_date: @start_date.advance(days: 4))
        @sat = current_user.entries.where(category_id: @cal_cat_id, entry_date: @start_date.advance(days: 5))
        @sun = current_user.entries.where(category_id: @cal_cat_id, entry_date: @start_date.advance(days: 6))
        @entries = current_user.entries.where('entry_date BETWEEN ? AND ?', @start_date, @end_date).order(:entry_date)
        @entry = Entry.new
    end

    def create
        current_user.entries.create(content: params[:entry][:content], category_id: params[:category_id], entry_date: params[:date])
        redirect_to entries_path(offset: params[:offset])
    end

end

