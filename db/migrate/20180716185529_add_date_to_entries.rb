class AddDateToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :entry_date, :date
  end
end
