class AddCategoryRefToEntries < ActiveRecord::Migration[5.2]
  def change
    add_reference :entries, :category, foreign_key: true
  end
end
