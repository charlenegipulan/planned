class CreateReflections < ActiveRecord::Migration[5.2]
  def change
    create_table :reflections do |t|
      t.date :month_date
      t.text :top10
      t.text :learnings
      t.text :newthings
      t.text :people
      t.text :improvements
      t.text :progressions
      t.text :obstacles
      t.text :wrongs
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
