# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Workout.destroy_all

p "Creating seeds"

10.times do
workout = Workout.new(sport:["fitness","cardio","HIIT"].sample, intensity:["2","3","4","5"].sample, duration:[25,30,45,60,90].sample)
workout.save
end

p "Seeds created"
