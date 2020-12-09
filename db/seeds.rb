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
categories = ["community", "environment", "youth", "seniors", "animals", "LGBTQ+", "culture", "outdoors", "indoors", "virtual", "sports"]
#1
# user
user1 = User.new(first_name: "Kennedy", last_name: "Odegaard ", email: "kennedy@gmail.com", password: "password ", bio: "Nonprofit Business Administration & Intercultural Studies graduate from North Dakota US (+ Minnesota & Arizona). Been living in Barcelona for 3 years teaching English... ready for a change & to start a job that interests & challenges me.")
user_avatar1 = URI.open("https://avatars2.githubusercontent.com/u/71378353?v=4")
user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
user1.save

# organization
organization1 = Organization.new(name: "Clean Beach Initiative", website: "https://cleanbeachinitiative.org", description: "Since we first founded the Clean Beach Initiative our main goal is to keep our beaches clean, to fight the pollution of our oceans and to raise awareness in our society. Only by joining efforts with the community and fostering direct action will we be able to tackle this issue. Since October 2018 we are working to protect our environment, by cleaning the beaches and more importantly by giving a good example.", location: "Barcelona", user: user1)
organization_logo1 = URI.open('https://cleanbeachinitiative.org/wp-content/uploads/2020/04/cropped-CBI-Logo-color3-on-transparent.png')
organization1.photo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
organization1.save

# event
event1 = Event.new(title: "Beach Cleanup in Barceloneta", description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.", location: "Barcelona", category: "community", start_time: "12/12/2020 11:00am", end_time: "12/12/2020 4:00pm", user: user1, organization: organization1)
event_photo1 = URI.open('https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg')
event1.photos.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
event1.save

#2

user2 = User.new(first_name: "Louis ", last_name: "Duquesne", email: "louis@gmail.com", password: "password ", bio: "Hi! I'm Louis and I'm from New Caledonia. I lived in Paris and Berlin and I worked as a Product Manager in the travel industry for 3 years. Last year I decided to leave everything to travel the world. After 9 months travelling in South America and Asia, I had to stop due to the actual crisis, and I decided to learn coding to build personal projects and/or to work as a product manager or a web developer
.")
user_avatar2 = URI.open("https://avatars0.githubusercontent.com/u/70454213?v=4")
user2.photo.attach(io: user_avatar2, filename: "user_avatar2.png", content_type: "image/png")
user2.save

# organization
organization2 = Organization.new(name: "Biblioteques de Barcelona", website: "https://ajuntament.barcelona.cat/", description: "Barcelona Public Library is among the most democratic civic institutions, serving patrons in every neighborhood and from every walk of life. BPL is one of Catalonia’s largest public library systems. BPL is a recognized leader in cultural offerings, literacy, out-of-school-time services, workforce development programs, and digital literacy. In a time of wide economic disparity, where the costs of basic necessities often take priority over spending on cultural enrichment opportunities, BPL provides a democratic space where patrons of all economic standings can avail themselves and their children to cultural and educational programs in a broad range of disciplines.", location: "Barcelona", user: user2)
organization_logo2 = URI.open("https://www.barcelona.cat/assets/images/brand/banner/2017/logo.svg")
organization2.photo.attach(io: organization_logo2, filename: "organization_logo2.png", content_type: "image/png")
organization2.save

# event
event2 = Event.new(title:"Story Time at The Library", description: "Are you passionate about story-telling? Do you love kids? We are looking for 5 volunteers as we begin our new program of early-literacy. On Wednesdays afterschool, kids from age 5 to 10 will sit in our main hall to listen to stories. Volunteers will have the opportunity to read from a selection of stories, distribute snacks, check-in, and just assist in supervising the event. It’s super fun and a great opportunity to interact with members of your community!
", location: "Barcelona", category: "youth", start_time: "16/12/2020 2:00pm", end_time: "16/12/2020 6:00pm", user: user2, organization: organization2)
event_photo2 = URI.open("https://images.unsplash.com/photo-1533029764620-40021530b1aa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fGJvb2tzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event2.photos.attach(io: event_photo2, filename: "event_photo2.png", content_type: "image/png")
event2.save

event3 = Event.new(title:"Digital Literacy for Seniors", description: "Description: Are you passionate about computers? Do you love teaching? We are looking for 5 volunteers as we begin our new program of digital-literacy. On Thursdays, we will welcome those who need a little bit of help navigating our rapidly changing world of technology. Volunteers will have the opportunity to teach various skills from checking emails, downloading apps, software updates, saving contacts and other basic everyday use of computers and cell-phones as well as other devices. Volunteers will assist with check-in, and in supervising the event as well. It’s super fun and a great opportunity to interact with members of your community!
", location: "Barcelona", category: "seniors", start_time: "17/12/2020 5:00pm", end_time: "17/12/2020 8:00pm", user: user2, organization: organization2)
event_photo3 = URI.open("https://images.unsplash.com/photo-1517430816045-df4b7de11d1d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1351&q=80")
event3.photos.attach(io: event_photo3, filename: "event_photo3.png", content_type: "image/png")
event3.save

#3

# user3 = User.new(first_name: "Kennedee", last_name: "Odegoord ", email: "kennedee@gmail.com", password: "password ", bio: "Nonprofit Business Administration & Intercultural Studies graduate from North Dakota US (+ Minnesota & Arizona). Been living in Barcelona for 3 years teaching English... ready for a change & to start a job that interests & challenges me.")
# user_avatar1 = URI.open("https://avatars2.githubusercontent.com/u/71378353?v=4")
# user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
# user3.save

# organization
# organization3 = Organization.new(name: "Clean Beach Initiative", website: "https://cleanbeachinitiative.org", description: "Since we first founded the Clean Beach Initiative our main goal is to keep our beaches clean, to fight the pollution of our oceans and to raise awareness in our society. Only by joining efforts with the community and fostering direct action will we be able to tackle this issue. Since October 2018 we are working to protect our environment, by cleaning the beaches and more importantly by giving a good example.", location: "Barcelona", user: user3)
# organization_logo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/cropped-CBI-Logo-color3-on-transparent.png")
# organization1.photo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
# organization3.save
# event
# event3 = Event.new(title:"Beach Cleanup in Barceloneta", description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.
# ", location: "Barcelona", category: categories.sample, start_time: "12/12/2020 11:00am", end_time: "12/12/2020 4:00pm", user: user3, organization: organization3)
# event_photo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg")
# event1.photo.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
# event3.save

#4

# user4 = User.new(first_name: "Kennnedy", last_name: "Oddegaard ", email: "kennedy4@gmail.com", password: "password ", bio: "Nonprofit Business Administration & Intercultural Studies graduate from North Dakota US (+ Minnesota & Arizona). Been living in Barcelona for 3 years teaching English... ready for a change & to start a job that interests & challenges me.")
# user_avatar1 = URI.open("https://avatars2.githubusercontent.com/u/71378353?v=4")
# user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
# user4.save

# organization
# organization4 = Organization.new(name: "Clean Beach Initiative", website: "https://cleanbeachinitiative.org", description: "Since we first founded the Clean Beach Initiative our main goal is to keep our beaches clean, to fight the pollution of our oceans and to raise awareness in our society. Only by joining efforts with the community and fostering direct action will we be able to tackle this issue. Since October 2018 we are working to protect our environment, by cleaning the beaches and more importantly by giving a good example.", location: "Barcelona", user: user4)
# organization_logo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/cropped-CBI-Logo-color3-on-transparent.png")
# organization1.photo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
# organization4.save
# event
# event4 = Event.new(title:"Beach Cleanup in Barceloneta", description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.
# ", location: "Barcelona", category: categories.sample, start_time: "12/12/2020 11:00am", end_time: "12/12/2020 4:00pm", user: user4, organization: organization4)
# event_photo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg")
# event1.photo.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
# event4.save

#5

# user5 = User.new(first_name: "Keeennedy", last_name: "Ooodegaard ", email: "kennedy5@gmail.com", password: "password ", bio: "Nonprofit Business Administration & Intercultural Studies graduate from North Dakota US (+ Minnesota & Arizona). Been living in Barcelona for 3 years teaching English... ready for a change & to start a job that interests & challenges me.")
# user_avatar1 = URI.open("https://avatars2.githubusercontent.com/u/71378353?v=4")
# user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
# user5.save

# organization
# organization5 = Organization.new(name: "Clean Beach Initiative", website: "https://cleanbeachinitiative.org", description: "Since we first founded the Clean Beach Initiative our main goal is to keep our beaches clean, to fight the pollution of our oceans and to raise awareness in our society. Only by joining efforts with the community and fostering direct action will we be able to tackle this issue. Since October 2018 we are working to protect our environment, by cleaning the beaches and more importantly by giving a good example.", location: "Barcelona", user: user5)
# organization_logo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/cropped-CBI-Logo-color3-on-transparent.png")
# organization1.photo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
# organization5.save
# # event
# event5 = Event.new(title:"Beach Cleanup in Barceloneta", description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.
# ", location: "Barcelona", category: categories.sample, start_time: "12/12/2020 11:00am", end_time: "12/12/2020 4:00pm", user: user5, organization: organization5)
# event_photo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg")
# event1.photo.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
# event5.save

# 6

# user6 = User.new(first_name: "Kkkkennedy", last_name: "Odeeggaard ", email: "kennedy6@gmail.com", password: "password ", bio: "Nonprofit Business Administration & Intercultural Studies graduate from North Dakota US (+ Minnesota & Arizona). Been living in Barcelona for 3 years teaching English... ready for a change & to start a job that interests & challenges me.")
# user_avatar1 = URI.open("https://avatars2.githubusercontent.com/u/71378353?v=4")
# user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
# user6.save

# organization
# organization6 = Organization.new(name: "Clean Beach Initiative", website: "https://cleanbeachinitiative.org", description: "Since we first founded the Clean Beach Initiative our main goal is to keep our beaches clean, to fight the pollution of our oceans and to raise awareness in our society. Only by joining efforts with the community and fostering direct action will we be able to tackle this issue. Since October 2018 we are working to protect our environment, by cleaning the beaches and more importantly by giving a good example.", location: "Barcelona", user: user6)
# organization_logo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/cropped-CBI-Logo-color3-on-transparent.png")
# organization1.photo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
# organization6.save
# event
# event6 = Event.new(title:"Beach Cleanup in Barceloneta", description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.
# ", location: "Barcelona", category: categories.sample, start_time: "12/12/2020 11:00am", end_time: "12/12/2020 4:00pm", user: user6, organization: organization6)
# event_photo1 = URI.open("https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg")
# event1.photo.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
# event6.save





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

