# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Booking.destroy_all
Event.destroy_all
Organization.destroy_all
User.destroy_all
CATEGORIES = ["community", "environment", "youth", "seniors", "animals", "LGBTQ+", "culture", "outdoors", "indoors", "virtual", "sports"]
#1
# user
user1 = User.new(first_name: "Kennedy", last_name: "Odegaard ", email: "kennedy@gmail.com", password: "password", bio: "Nonprofit Business Administration & Intercultural Studies graduate from North Dakota US (+ Minnesota & Arizona). Been living in Barcelona for 3 years teaching English... ready for a change & to start a job that interests & challenges me.")
user_avatar1 = URI.open("https://avatars2.githubusercontent.com/u/71378353?v=4")
user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
user1.save

# organization
organization1 = Organization.new(name: "Clean Beach Initiative", website: "https://cleanbeachinitiative.org", description: "Since we first founded the Clean Beach Initiative our main goal is to keep our beaches clean, to fight the pollution of our oceans and to raise awareness in our society. Only by joining efforts with the community and fostering direct action will we be able to tackle this issue. Since October 2018 we are working to protect our environment, by cleaning the beaches and more importantly by giving a good example.", location: "Carrer de Floridablanca, 91, 08015 Barcelona", user: user1)
organization_logo1 = URI.open('https://cleanbeachinitiative.org/wp-content/uploads/2020/04/cropped-CBI-Logo-color3-on-transparent.png')
organization1.logo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")

banner1 = URI.open("https://images.unsplash.com/photo-1496737018672-b1a6be2e949c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
organization1.photos.attach(io: banner1, filename: "banner1.png", content_type: "image/png")

organization1.save

# event
event1 = Event.new(title: "Beach Cleanup in Barceloneta", capacity: 10, description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.", location: "Carrer de Floridablanca, 91, 08015 Barcelona", category: "community", start_time: "12/12/2020 11:00am", end_time: "12/12/2020 4:00pm", user: user1, organization: organization1)
event_photo1 = URI.open('https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg')
event1.photos.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
event1.save

#2

user2 = User.new(first_name: "Louis", last_name: "Duquesne", email: "louis@gmail.com", password: "password ", bio: "Hi! I'm Louis and I'm from New Caledonia. I lived in Paris and Berlin and I worked as a Product Manager in the travel industry for 3 years. Last year I decided to leave everything to travel the world. After 9 months travelling in South America and Asia, I had to stop due to the actual crisis, and I decided to learn coding to build personal projects and/or to work as a product manager or a web developer.")
user_avatar2 = URI.open("https://avatars0.githubusercontent.com/u/70454213?v=4")
user2.photo.attach(io: user_avatar2, filename: "user_avatar2.png", content_type: "image/png")
user2.save

# organization
organization2 = Organization.new(name: "Biblioteques de Barcelona", website: "https://ajuntament.barcelona.cat/", description: "Barcelona Public Library is among the most democratic civic institutions, serving patrons in every neighborhood and from every walk of life. BPL is one of Catalonia’s largest public library systems. BPL is a recognized leader in cultural offerings, literacy, out-of-school-time services, workforce development programs, and digital literacy. In a time of wide economic disparity, where the costs of basic necessities often take priority over spending on cultural enrichment opportunities, BPL provides a democratic space where patrons of all economic standings can avail themselves and their children to cultural and educational programs in a broad range of disciplines.", location: "Carrer de Provença, 480, 08025 Barcelona", user: user2)
organization_logo2 = URI.open("https://www.barcelona.cat/assets/images/brand/banner/2017/logo.svg")
organization2.logo.attach(io: organization_logo2, filename: "organization_logo2.png", content_type: "image/png")
banner2 = URI.open("https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8Ym9va3N8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60")
organization2.photos.attach(io: banner2, filename: "banner2.png", content_type: "image/png")
organization2.save

# event
event2 = Event.new(title:"Story Time at The Library", capacity: 10, description: "Are you passionate about story-telling? Do you love kids? We are looking for 5 volunteers as we begin our new program of early-literacy. On Wednesdays afterschool, kids from age 5 to 10 will sit in our main hall to listen to stories. Volunteers will have the opportunity to read from a selection of stories, distribute snacks, check-in, and just assist in supervising the event. It’s super fun and a great opportunity to interact with members of your community!", location: "Carrer de Provença, 480, 08025 Barcelona", category: "youth", start_time: "16/12/2020 2:00pm", end_time: "16/12/2020 6:00pm", user: user2, organization: organization2)
event_photo2 = URI.open("https://images.unsplash.com/photo-1533029764620-40021530b1aa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fGJvb2tzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event2.photos.attach(io: event_photo2, filename: "event_photo2.png", content_type: "image/png")
event2.save

event3 = Event.new(title:"Digital Literacy for Seniors", capacity: 10, description: "Description: Are you passionate about computers? Do you love teaching? We are looking for 5 volunteers as we begin our new program of digital-literacy. On Thursdays, we will welcome those who need a little bit of help navigating our rapidly changing world of technology. Volunteers will have the opportunity to teach various skills from checking emails, downloading apps, software updates, saving contacts and other basic everyday use of computers and cell-phones as well as other devices. Volunteers will assist with check-in, and in supervising the event as well. It’s super fun and a great opportunity to interact with members of your community!", location: "Carrer de Provença, 480, 08025 Barcelona", category: "seniors", start_time: "17/12/2020 5:00pm", end_time: "17/12/2020 8:00pm", user: user2, organization: organization2)
event_photo3 = URI.open("https://images.unsplash.com/photo-1517430816045-df4b7de11d1d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1351&q=80")
event3.photos.attach(io: event_photo3, filename: "event_photo3.png", content_type: "image/png")
event3.save

#3

user3 = User.new(first_name: "Raoul", last_name: "Boisset", email: "raoul@gmail.com", password: "password", bio: "I was born in France but moved to the USA when I was 12. Before LeWagon I worked in Real Estate in NYC, I mostly worked in sales and marketing for individuals and developers. I also took a year to work at the New York Public Library and did a bit of real estate during that time too.")
user_avatar3 = URI.open("https://avatars3.githubusercontent.com/u/62706821?v=4")
user3.photo.attach(io: user_avatar3, filename: "user_avatar3.png", content_type: "image/png")
user3.save

# organization
organization3 = Organization.new(name: "Arrels Fundacio", website: "https://www.arrelsfundacio.org", description: "The members of Arrels are people who want no one to sleep on the street . Since 1987 we have accompanied more than 14,700 homeless people on their way to autonomy, offering guidance and useful services for accommodation, food and social and health care. We have the support of 68 workers, about 400 volunteers and more than 5,700 members and donors who collaborate to make possible ", location: "Carrer de la Riereta, 24, 08001 Barcelona", user: user3)
organization_logo3 = URI.open("https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80")
organization3.logo.attach(io: organization_logo3, filename: "organization_logo3.png", content_type: "image/png")
banner3 = URI.open("https://images.unsplash.com/photo-1519430044529-9a9a57177865?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aG9tZWxlc3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
organization3.photos.attach(io: banner3, filename: "banner3.png", content_type: "image/png")
organization3.save

# event
event4 = Event.new(title:"La Troballa language classes", capacity: 10, description: "La Troballa is Arrels' occupational workshop, where people who live or have lived on the streets regain skills through artisanal production. Volunteer teachers offer stimulating lessons Catalan and / or Spanish for immigrants living in the street. Tuesday and / or Thursday from 3.30pm to 6.30pm.
", location: "Barcelona", category: "community", start_time: "22/12/2020 3:30pm", end_time: "22/12/2020 6:30pm", user: user3, organization: organization3)
event_photo4 = URI.open("https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29tbXVuaXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event4.photos.attach(io: event_photo4, filename: "event_photo4.png", content_type: "image/png")
event4.save


event5 = Event.new(title:"La Troballa store management", capacity: 10, description: "La Troballa is Arrels' occupational workshop, where people who live or have lived on the streets regain skills through artisanal production. Volunteer Manage the sale of products made in the workshop through the digital store and, later, the physical store that is under construction. Daily shifts 7days a week.
", location: "Barcelona", category: "community", start_time: "17/12/2020 5:00pm", end_time: "17/12/2020 8:00pm", user: user3, organization: organization3)
event_photo5 = URI.open("https://images.unsplash.com/photo-1473187983305-f615310e7daa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHN0b3JlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event5.photos.attach(io: event_photo5, filename: "event_photo5.png", content_type: "image/png")
event5.save



#4
user4 = User.new(first_name: "Avalon", last_name: "Van der Horst", email: "avalon@gmail.com", password: "password", bio: "I love to help people! I’m a teacher and manager at a startup in Barcelona, I’m a foodie, music junky, and love anything outdoors. I’ve lived in many places but Barcelona is home, for now!")
user_avatar4 = URI.open("https://avatars2.githubusercontent.com/u/34066198?s=400&u=99de4cf78c8ad03de0acc5b346de694623657aab&v=4")
user4.photo.attach(io: user_avatar4, filename: "user_avatar3.png", content_type: "image/png")
user4.save

# organization
organization4 = Organization.new(name: "Fundacion Lucha", website: "https://www.flsida.org", description: "Fundacion Lucha provides sensitive, quality health care and related services targeted to Barcelona’s lesbian, gay, bisexual, and transgender communities — in all their diversity — regardless of ability to pay. To further this mission, Fundacion Lucha promotes health education and wellness, and advocates for LGBTQ health issues.", location: "Carrer de Roger de Llúria, 13, 08010 Barcelona", user: user3)
organization_logo4 = URI.open("https://www.flsida.org/sites/default/files/logotipo.png")
organization4.logo.attach(io: organization_logo4, filename: "organization_logo4.png", content_type: "image/png")
banner4 = URI.open("https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZG9jdG9yc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
organization4.photos.attach(io: banner4, filename: "banner4.png", content_type: "image/png")
organization4.save

# event
event6 = Event.new(title:"Spinning against AIDS", capacity: 10, description: "his is a 12-hour marathon of indoor cycling (commonly known as spinning), organised by the Fundació Lluita contra la Sida [Fight Against AIDS Foundation], with the aim of raising funds to finance their research projects. Symbolically, a round-the-world trip will be completed, passing through a variety of places and discovering how HIV/AIDS is affecting them.
A virtual route will be selected, passing through countries, cities and regions, with the aim of completing a trip around the world. Each session will have a different profile, according to the territory involved and its geographical characteristics. In each one, participants will be motivated by different sensations that aim to complete their experience: these include props, decorations, images projected onto a giant screen located on stage and a selection of music that reflects each geographic area’s style and tendencies.", location: "Barcelona", category: "LGBTQ+", start_time: "12/01/2021 9:00am", end_time: "12/01/2021 9:00pm", user: user4, organization: organization4)
event_photo6 = URI.open("https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29tbXVuaXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event6.photos.attach(io: event_photo6, filename: "event_photo6.png", content_type: "image/png")
event6.save


