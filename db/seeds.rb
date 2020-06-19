require "open-uri"

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

file1 = URI.open("https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
file2 = URI.open("https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
file3 = URI.open("https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
workout = Workout.create!(title:["Rowing session", "Biking session","Fitness core", "Weekly challenge", "Finisher","CEO workout","The accountant","HR challenge"].sample, sport:["fitness","cardio","HIIT"].sample, intensity:["2","3","4","5"].sample, duration:[25,30,45,60,90].sample)
workout.photos.attach(io: file1, filename: 'workout1.png', content_type: 'image/png')
workout.photos.attach(io: file2, filename: 'workout1.png', content_type: 'image/png')
workout.photos.attach(io: file3, filename: 'workout1.png', content_type: 'image/png')

end

p "Seeds created"


