# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Event.destroy_all
Organization.destroy_all
User.destroy_all

# user 
user1 = User.new(first_name: "Kennedy", last_name: "Odegaard ", email: "kennedy@gmail.com", password: "password ", bio: "Nonprofit Business Administration & Intercultural Studies graduate from North Dakota US (+ Minnesota & Arizona). Been living in Barcelona for 3 years teaching English... ready for a change & to start a job that interests & challenges me.")
# user_avatar1 = URI.open("https://avatars2.githubusercontent.com/u/71378353?v=4")
# user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
user1.save

# organization 
organization1 = Organization.new(name: "Clean Beach Initiative", website: "https://cleanbeachinitiative.org", description: "Since we first founded the Clean Beach Initiative our main goal is to keep our beaches clean, to fight the pollution of our oceans and to raise awareness in our society. Only by joining efforts with the community and fostering direct action will we be able to tackle this issue. Since October 2018 we are working to protect our environment, by cleaning the beaches and more importantly by giving a good example.", location: "Barcelona", user: user1)
# organization_logo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/cropped-CBI-Logo-color3-on-transparent.png")
# organization1.photo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
organization1.save
# event
event1 = Event.new(title:"Beach Cleanup in Barceloneta", description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.
", location: "Barcelona", category: "Environment ", start_time: "12/12/2020 11:00am", end_time: "12/12/2020 4:00pm", user: user1, organization: organization1)
# event_photo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg")
# event1.photo.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
event1.save


# # user 
# user1 = User.create!(first_name: "", last_name: "", email: "", password: "", bio:"")
# user_avatar1 = Uri.open()
# user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
# # organization 
# organization1 = Organization.new(name: "", website: "", description: "", location: "", user: "")
# organization_logo1 = Uri.open()
# organization1.photo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
# organization1.save
# # event
# event1 = Event.new(title: "", photo: "", description: "", location: "", category: "", start_time: "", end_time: "", user: "", organization: "")
# event_photo1 = Uri.open()
# event1.photo.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
# event1.save

