# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all
# Category.all.each { |c| c.destroy }
# Category.all.each do |category|
#     category.destroy
# end

Category.create([
    {name: 'calendar-item'},
    {name: 'goal'},
    {name: 'priority'},
    {name: 'work-to-do'},
    {name: 'personal-to-do'},
    {name: 'idea'},
    {name: 'note'}
])

Entry.delete_all
Entry.create([
    {content: 'go to class at 9 am', category_id: Category.first.id, entry_date: Date.today, user: User.first}, 
    {content: 'work out', category_id: Category.fifth.id, entry_date: Date.today, user: User.first}, 
    {content: 'work out again', category_id: Category.fifth.id, entry_date: Date.today, user: User.first},
    {content: 'work one more time', category_id: Category.fifth.id, entry_date: Date.today, user: User.first},
    {content: 'Finish project by Wednesday', category_id: Category.third.id, entry_date: Date.today, user: User.first},
    {content: 'Be really good with Rails', category_id: Category.second.id, entry_date: Date.today, user: User.first},
    {content: 'Send out weekly team email by Thursday night', category_id: Category.fourth.id, entry_date: Date.today, user: User.first},
    {content: 'Amanda- 3231231212', category_id: Category.last.id, entry_date: Date.today, user: User.first}
])

