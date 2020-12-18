# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Chatroom.destroy_all
Booking.destroy_all
Event.destroy_all
Organization.destroy_all
User.destroy_all
CATEGORIES = ["community", "environment", "youth", "seniors", "animals", "LGBTQ+", "culture", "outdoors", "indoors", "virtual", "sports"]


# user
user1 = User.new(first_name: "Kennedy", last_name: "Odegaard ", email: "kennedy@gmail.com", password: "password", bio: "Nonprofit Business Administration & Intercultural Studies graduate from North Dakota US (+ Minnesota & Arizona). Been living in Barcelona for 3 years teaching English... ready for a change & to start a job that interests & challenges me.")
user_avatar1 = URI.open("https://avatars2.githubusercontent.com/u/71378353?v=4")
user1.photo.attach(io: user_avatar1, filename: "user_avatar1.png", content_type: "image/png")
user1.save

# organization
organization1 = Organization.new(name: "Clean Beach Initiative", website: "https://www.cleanbeachinitiative.org", description: "Since we first founded the Clean Beach Initiative our main goal is to keep our beaches clean, to fight the pollution of our oceans and to raise awareness in our society. Only by joining efforts with the community and fostering direct action will we be able to tackle this issue. Since October 2020 we are working to protect our environment, by cleaning the beaches and more importantly by giving a good example.", location: "Carrer de Floridablanca 91, 08015 Barcelona", user: user1)
organization_logo1 = URI.open('https://cleanbeachinitiative.org/wp-content/uploads/2020/04/cropped-CBI-Logo-color3-on-transparent.png')
organization1.logo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
banner1 = URI.open("https://images.unsplash.com/photo-1496737018672-b1a6be2e949c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
organization1.photos.attach(io: banner1, filename: "banner1.png", content_type: "image/png")
organization1.save

# event
event1 = Event.new(title: "Beach Cleanup in Barceloneta", capacity: 10, description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.", location: "Carrer de Floridablanca 91, 08015 Barcelona", category: "community", start_time: "29/12/2020 11:00am", end_time: "29/12/2020 4:00pm", user: user1, organization: organization1)
event_photo1 = URI.open('https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg')
event1.photos.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
event1.save

event10 = Event.new(title: "Beach Cleanup in Bogatell", capacity: 10, description: "With our group of volunteers we are organizing weekly beach cleanups in Bogatell. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.", location: "Carrer de Floridablanca 91, 08015 Barcelona", category: "community", start_time: "23/12/2020 11:00am", end_time: "23/12/2020 4:00pm", user: user1, organization: organization1)
event10_photo1 = URI.open("https://www.signupgenius.com/cms/images/groups/beach-clean-up-tips-ideas-article-600x400.jpg")
event10.photos.attach(io: event10_photo1, filename: "event_photo1.png", content_type: "image/png")
event10_photo2 = URI.open("https://cdn.shopify.com/s/files/1/0996/1022/articles/person_picking_up_trash.jpg?v=1599675391")
event10.photos.attach(io: event10_photo2, filename: "event_photo1.png", content_type: "image/png")
event10_photo3 = URI.open("https://www.khmertimeskh.com/wp-content/uploads/2019/01/P17-feature-pix.jpg")
event10.photos.attach(io: event10_photo3, filename: "event_photo1.png", content_type: "image/png")


# past event
past_event1 = Event.new(title: "Beach Cleanup in Barceloneta", capacity: 10, description: "With our group of volunteers we are organizing weekly beach cleanups in Barcelona. We are always looking forward to welcoming new people to our team. So join us in making our planet an even more beautiful place.", location: "Carrer de Floridablanca 91, 08015 Barcelona", category: "community", start_time: "12/12/2020 11:00am", end_time: "12/12/2020 4:00pm", user: user1, organization: organization1)
past_event_photo1 = URI.open('https://cleanbeachinitiative.org/wp-content/uploads/2020/04/EU-Plastic-Ban.jpg')
past_event1.photos.attach(io: past_event_photo1, filename: "past_event_photo1.png", content_type: "image/png")
past_event1.save


#2

user2 = User.new(first_name: "Louis", last_name: "Duquesne", email: "louis@gmail.com", password: "password ", bio: "Hi! I'm Louis and I'm from New Caledonia. I lived in Paris and Berlin and I worked as a Product Manager in the travel industry for 3 years. Last year I decided to leave everything to travel the world. After 9 months travelling in South America and Asia, I had to stop due to the actual crisis, and I decided to learn coding to build personal projects and/or to work as a product manager or a web developer.")
user_avatar2 = URI.open("https://avatars0.githubusercontent.com/u/64650914?v=4")
user2.photo.attach(io: user_avatar2, filename: "user_avatar2.png", content_type: "image/png")
user2.save

# organization
organization2 = Organization.new(name: "Biblioteques de Barcelona", website: "www.ajuntament.barcelona.cat", description: "Barcelona Public Library is among the most democratic civic institutions, serving patrons in every neighborhood and from every walk of life. BPL is one of Catalonia’s largest public library systems. BPL is a recognized leader in cultural offerings, literacy, out-of-school-time services, workforce development programs, and digital literacy. In a time of wide economic disparity, where the costs of basic necessities often take priority over spending on cultural enrichment opportunities, BPL provides a democratic space where patrons of all economic standings can avail themselves and their children to cultural and educational programs in a broad range of disciplines.", location: "Carrer de Provença 480, 08025 Barcelona", user: user2)
organization_logo2 = URI.open("https://www.barcelona.cat/assets/images/brand/banner/2017/logo.svg")
organization2.logo.attach(io: organization_logo2, filename: "organization_logo2.png", content_type: "image/png")
banner2 = URI.open("https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8Ym9va3N8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60")
organization2.photos.attach(io: banner2, filename: "banner2.png", content_type: "image/png")
organization2.save

# event
event2 = Event.new(title:"Story Time at The Library", capacity: 15, description: "Are you passionate about story-telling? Do you love kids? We are looking for 5 volunteers as we begin our new program of early-literacy. On Wednesdays afterschool, kids from age 5 to 10 will sit in our main hall to listen to stories. Volunteers will have the opportunity to read from a selection of stories, distribute snacks, check-in, and just assist in supervising the event. It’s super fun and a great opportunity to interact with members of your community!", location: "Carrer de Provença, 480, 08025 Barcelona", category: "community", start_time: "16/01/2021 2:00pm", end_time: "16/01/2021 6:00pm", user: user2, organization: organization2)
event_photo2 = URI.open("https://images.unsplash.com/photo-1533029764620-40021530b1aa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fGJvb2tzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event2.photos.attach(io: event_photo2, filename: "event_photo2.png", content_type: "image/png")
event2.save

event3 = Event.new(title:"Digital Literacy for Seniors", capacity: 22, description: "Description: Are you passionate about computers? Do you love teaching? We are looking for 5 volunteers as we begin our new program of digital-literacy. On Thursdays, we will welcome those who need a little bit of help navigating our rapidly changing world of technology. Volunteers will have the opportunity to teach various skills from checking emails, downloading apps, software updates, saving contacts and other basic everyday use of computers and cell-phones as well as other devices. Volunteers will assist with check-in, and in supervising the event as well. It’s super fun and a great opportunity to interact with members of your community!", location: "Carrer de Provença, 480, 08025 Barcelona", category: "community", start_time: "17/02/2021 5:00pm", end_time: "17/02/2021 8:00pm", user: user2, organization: organization2)
event_photo3 = URI.open("https://images.unsplash.com/photo-1517430816045-df4b7de11d1d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1351&q=80")
event3.photos.attach(io: event_photo3, filename: "event_photo3.png", content_type: "image/png")
event_photo4 = URI.open("https://kwhs-wpengine.netdna-ssl.com/wp-content/uploads/2020/04/Jordan.png")
event3.photos.attach(io: event_photo4, filename: "event_photo4.png", content_type: "image/png")
event_photo5 = URI.open("https://media.npr.org/assets/img/2020/01/15/kendra-gonzales-coaching-linda-haverty-1_wide-16bfd22b1538d9a7218bd0a0dab7bb6228d15e3a-s1600-c85.jpg")
event3.photos.attach(io: event_photo5, filename: "event_photo4.png", content_type: "image/png")
event3.save

# past events
past_event2 = Event.new(title:"Story Time at The Library", capacity: 10, description: "Are you passionate about story-telling? Do you love kids? We are looking for 5 volunteers as we begin our new program of early-literacy. On Wednesdays afterschool, kids from age 5 to 10 will sit in our main hall to listen to stories. Volunteers will have the opportunity to read from a selection of stories, distribute snacks, check-in, and just assist in supervising the event. It’s super fun and a great opportunity to interact with members of your community!", location: "Carrer de Provença, 480, 08025 Barcelona", category: "community", start_time: "16/11/2020 2:00pm", end_time: "16/11/2020 6:00pm", user: user2, organization: organization2)
past_event_photo2 = URI.open("https://images.unsplash.com/photo-1533029764620-40021530b1aa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fGJvb2tzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
past_event2.photos.attach(io: past_event_photo2, filename: "past_event_photo2.png", content_type: "image/png")
past_event2.save

past_event3 = Event.new(title:"Digital Literacy for Seniors", capacity: 15, description: "Are you passionate about computers? Do you love teaching? We are looking for 5 volunteers as we begin our new program of digital-literacy. On Thursdays, we will welcome those who need a little bit of help navigating our rapidly changing world of technology. Volunteers will have the opportunity to teach various skills from checking emails, downloading apps, software updates, saving contacts and other basic everyday use of computers and cell-phones as well as other devices. Volunteers will assist with check-in, and in supervising the event as well. It’s super fun and a great opportunity to interact with members of your community!", location: "Carrer de Provença, 480, 08025 Barcelona", category: "seniors", start_time: "17/09/2020 5:00pm", end_time: "17/09/2020 8:00pm", user: user2, organization: organization2)
past_event_photo3 = URI.open("https://images.unsplash.com/photo-1517430816045-df4b7de11d1d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1351&q=80")
past_event3.photos.attach(io: past_event_photo3, filename: "past_event_photo3.png", content_type: "image/png")
past_event3.save

#3
user3 = User.new(first_name: "Raoul", last_name: "Boisset", email: "raoul@gmail.com", password: "password", bio: "I was born in France but moved to the USA when I was 12. Before LeWagon I worked in Real Estate in NYC, I mostly worked in sales and marketing for individuals and developers. I also took a year to work at the New York Public Library and did a bit of real estate during that time too.")
user_avatar3 = URI.open("https://avatars3.githubusercontent.com/u/62706821?v=4")
user3.photo.attach(io: user_avatar3, filename: "user_avatar3.png", content_type: "image/png")
user3.save

# organization
organization3 = Organization.new(name: "Arrels Fundacio", website: "www.arrelsfundacio.org", description: "The members of Arrels are people who want no one to sleep on the street . Since 1987 we have accompanied more than 14,700 homeless people on their way to autonomy, offering guidance and useful services for accommodation, food and social and health care. We have the support of 68 workers, about 400 volunteers and more than 5,700 members and donors who collaborate to make possible ", location: "Carrer de la Riereta, 24, 08001 Barcelona", user: user3)
organization_logo3 = URI.open("https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80")
organization3.logo.attach(io: organization_logo3, filename: "organization_logo3.png", content_type: "image/png")
banner3 = URI.open("https://images.unsplash.com/photo-1519430044529-9a9a57177865?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aG9tZWxlc3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
organization3.photos.attach(io: banner3, filename: "banner3.png", content_type: "image/png")
organization3.save

# event
event4 = Event.new(title:"La Troballa language classes", capacity: 22, description: "La Troballa is Arrels' occupational workshop, where people who live or have lived on the streets regain skills through artisanal production. Volunteer teachers offer stimulating lessons Catalan and / or Spanish for immigrants living in the street. Tuesday and / or Thursday from 3.30pm to 6.30pm.
", location: "Barcelona", category: "community", start_time: "22/12/2020 3:30pm", end_time: "22/12/2020 6:30pm", user: user3, organization: organization3)
event_photo4 = URI.open("https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29tbXVuaXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event4.photos.attach(io: event_photo4, filename: "event_photo4.png", content_type: "image/png")
event4.save


event5 = Event.new(title:"La Troballa store management", capacity: 15, description: "La Troballa is Arrels' occupational workshop, where people who live or have lived on the streets regain skills through artisanal production. Volunteer Manage the sale of products made in the workshop through the digital store and, later, the physical store that is under construction. Daily shifts 7days a week.
", location: "Barcelona", category: "community", start_time: "17/01/2021 5:00pm", end_time: "17/01/2021 8:00pm", user: user3, organization: organization3)
event_photo5 = URI.open("https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c3RvcmV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event5.photos.attach(io: event_photo5, filename: "event_photo5.png", content_type: "image/png")
event5.save


# event
past_event4 = Event.new(title:"La Troballa language classes", capacity: 22, description: "La Troballa is Arrels' occupational workshop, where people who live or have lived on the streets regain skills through artisanal production. Volunteer teachers offer stimulating lessons Catalan and / or Spanish for immigrants living in the street. Tuesday and / or Thursday from 3.30pm to 6.30pm.
", location: "Barcelona", category: "community", start_time: "12/12/2020 3:30pm", end_time: "12/12/2020 6:30pm", user: user3, organization: organization3)
past_event_photo4 = URI.open("https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29tbXVuaXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
past_event4.photos.attach(io: past_event_photo4, filename: "past_event_photo4.png", content_type: "image/png")
past_event4.save


past_event5 = Event.new(title:"La Troballa store management", capacity: 12, description: "La Troballa is Arrels' occupational workshop, where people who live or have lived on the streets regain skills through artisanal production. Volunteer Manage the sale of products made in the workshop through the digital store and, later, the physical store that is under construction. Daily shifts 7days a week.
", location: "Barcelona", category: "community", start_time: "17/01/2020 5:00pm", end_time: "17/01/2020 8:00pm", user: user3, organization: organization3)
past_event_photo5 = URI.open("https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c3RvcmV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
past_event5.photos.attach(io: past_event_photo5, filename: "past_event_photo5.png", content_type: "image/png")
past_event5.save



#4
user4 = User.new(first_name: "Avalon", last_name: "Van der Horst", email: "avalon@gmail.com", password: "password", bio: "I love to help people! I’m a teacher and manager at a startup in Barcelona, I’m a foodie, music junky, and love anything outdoors. I’ve lived in many places but Barcelona is home, for now!")
user_avatar4 = URI.open("https://avatars2.githubusercontent.com/u/34066198?s=400&u=99de4cf78c8ad03de0acc5b346de694623657aab&v=4")
user4.photo.attach(io: user_avatar4, filename: "user_avatar3.png", content_type: "image/png")
user4.save

# organization
organization4 = Organization.new(name: "Fundacion Lucha", website: "www.flsida.org", description: "Fundacion Lucha provides sensitive, quality health care and related services targeted to Barcelona’s lesbian, gay, bisexual, and transgender communities — in all their diversity — regardless of ability to pay. To further this mission, Fundacion Lucha promotes health education and wellness, and advocates for LGBTQ health issues.", location: "Carrer de Roger de Llúria, 13, 08010 Barcelona", user: user4)
organization_logo4 = URI.open("https://www.flsida.org/sites/default/files/logotipo.png")
organization4.logo.attach(io: organization_logo4, filename: "organization_logo4.png", content_type: "image/png")
banner4 = URI.open("https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZG9jdG9yc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
organization4.photos.attach(io: banner4, filename: "banner4.png", content_type: "image/png")
organization4.save

# event
event6 = Event.new(title:"Spinning against AIDS", capacity: 16, description: "this is a 12-hour marathon of indoor cycling (commonly known as spinning), organised by the Fundació Lluita contra la Sida [Fight Against AIDS Foundation], with the aim of raising funds to finance their research projects. Symbolically, a round-the-world trip will be completed, passing through a variety of places and discovering how HIV/AIDS is affecting them.
A virtual route will be selected, passing through countries, cities and regions, with the aim of completing a trip around the world. Each session will have a different profile, according to the territory involved and its geographical characteristics. In each one, participants will be motivated by different sensations that aim to complete their experience: these include props, decorations, images projected onto a giant screen located on stage and a selection of music that reflects each geographic area’s style and tendencies.", location: "Carrer de Ferran 20, 08002 Barcelona", category: "LGBTQ+", start_time: "12/01/2021 9:00am", end_time: "12/01/2021 9:00pm", user: user4, organization: organization4)
event_photo6 = URI.open("https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29tbXVuaXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event6.photos.attach(io: event_photo6, filename: "event_photo6.png", content_type: "image/png")
event6.save


# event
event7 = Event.new(title:"Hospital Volunteers", capacity: 20, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget laoreet diam. In purus dolor, rhoncus volutpat dictum eu, sodales eget augue. Morbi vel metus sem. Vivamus vulputate, magna non maximus dignissim, sem tellus gravida velit, ac vulputate urna leo ut mi. Morbi luctus dolor ac lorem auctor iaculis vitae et felis. Donec malesuada lacus non sodales dignissim. Aliquam tincidunt tortor leo, in volutpat tellus iaculis ut. Vestibulum efficitur turpis nec neque mollis, id mattis felis consectetur.", location: "Carrer de Ferran 20, 08002 Barcelona", category: "community", start_time: "6/01/2021 2:00pm", end_time: "6/01/2021 5:00pm", user: user4, organization: organization4)
event_photo7 = URI.open("https://images.unsplash.com/photo-1591046637513-a7d0caa5f9c6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTExfHxjaGlsZHJlbiUyMGNsb3dufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event7.photos.attach(io: event_photo7, filename: "event_photo7.png", content_type: "image/png")
event7.save


# past event
past_event6 = Event.new(title:"Spinning against AIDS", capacity: 16, description: "this is a 12-hour marathon of indoor cycling (commonly known as spinning), organised by the Fundació Lluita contra la Sida [Fight Against AIDS Foundation], with the aim of raising funds to finance their research projects. Symbolically, a round-the-world trip will be completed, passing through a variety of places and discovering how HIV/AIDS is affecting them.
A virtual route will be selected, passing through countries, cities and regions, with the aim of completing a trip around the world. Each session will have a different profile, according to the territory involved and its geographical characteristics. In each one, participants will be motivated by different sensations that aim to complete their experience: these include props, decorations, images projected onto a giant screen located on stage and a selection of music that reflects each geographic area’s style and tendencies.", location: "Carrer de Ferran 20, 08002 Barcelona", category: "LGBTQ+", start_time: "12/01/2020 9:00am", end_time: "12/01/2020 9:00pm", user: user4, organization: organization4)
past_event_photo6 = URI.open("https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29tbXVuaXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
past_event6.photos.attach(io: past_event_photo6, filename: "past_event_photo6.png", content_type: "image/png")
past_event6.save

past_event7 = Event.new(title:"Hospital Volunteers", capacity: 20, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget laoreet diam. In purus dolor, rhoncus volutpat dictum eu, sodales eget augue. Morbi vel metus sem. Vivamus vulputate, magna non maximus dignissim, sem tellus gravida velit, ac vulputate urna leo ut mi. Morbi luctus dolor ac lorem auctor iaculis vitae et felis. Donec malesuada lacus non sodales dignissim. Aliquam tincidunt tortor leo, in volutpat tellus iaculis ut. Vestibulum efficitur turpis nec neque mollis, id mattis felis consectetur.", location: "Carrer de Ferran 20, 08002 Barcelona", category: "community", start_time: "6/01/2020 2:00pm", end_time: "6/01/2020 5:00pm", user: user4, organization: organization4)
past_event_photo7 = URI.open("https://images.unsplash.com/photo-1591046637513-a7d0caa5f9c6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTExfHxjaGlsZHJlbiUyMGNsb3dufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
past_event7.photos.attach(io: past_event_photo7, filename: "past_event_photo7.png", content_type: "image/png")
past_event7.save


# 5
user5 = User.new(first_name: "Jie", last_name: "Hu Zhao", email: "jie@gmail.com", password: "password", bio: "Hi! My name is Jie and I am 20 years old. My family is originally Chinese, but I was born and raised in Madrid. I have 7 ducks, 12 chickens, 2 bunnies, 1 cat, and a donkey. I love animals so much and I'm thrilled to volunteer! ")
user_avatar5 = URI.open("https://avatars2.githubusercontent.com/u/48723634?v=4")
user5.photo.attach(io: user_avatar5, filename: "user_avatar5.png", content_type: "image/png")
user5.save

# organization
organization5 = Organization.new(name: "Barcelona Zoo", website: "www.zoobarcelona.cat", description: "The fundamental mission of the Barcelona Zoo Foundation is the promotion and development of the Barcelona Zoo and it does so by promoting new research, conservation, education and awareness-raising projects in order to become, from the point of view of public service, an instrument aimed at the preservation of biodiversity, the generation of knowledge and awareness of the protection and preservation of ecosystems and the interrelationship between the different forms of life that occur.", location: "Parc de la Ciutadella, 08003 Barcelona", user: user5)
organization_logo5 = URI.open("https://www.flsida.org/sites/default/files/logotipo.png")
organization5.logo.attach(io: organization_logo5, filename: "organization_logo5.png", content_type: "image/png")
banner5 = URI.open("https://images.unsplash.com/photo-1534567153574-2b12153a87f0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8em9vfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
organization5.photos.attach(io: banner5, filename: "banner5.png", content_type: "image/png")
organization5.save

# event
event7 = Event.new(title:"Dog Shelter", capacity: 20, description: "​Animal Rescue is dedicated to the promotion of care and welfare of companion animals in Upper Kittitas County. Based out of Roslyn, WA, our organization provides a multitude of services including:spay/neuter vouchers, help with vet care for low income families, pet adoption, fostering, supplying pet food for those in need, reuniting lost and found pets with their owners, humane education.", location: "Carrer de Ferran 20, 08002 Barcelona", category: "animals", start_time: "17/01/2021 9:00am", end_time: "17/01/2021 9:00pm", user: user5, organization: organization5)
event_photo7 = URI.open("https://images.unsplash.com/photo-1580244613605-924dbf4609de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTExfHxkb2clMjBzaGVsdGVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event7.photos.attach(io: event_photo7, filename: "event_photo7.png", content_type: "image/png")
event7.save

event8 = Event.new(title:"Sea Turtle Conservation", capacity: 15, description: "All seven species of sea turtles in the world are declining at an alarming rate, the majority of which are already classified as endangered. Sea turtles face slim odds at an early age, with only one in 5,000 ever reaching adulthood. Those lucky few that do make it, reproduce extremely slowly and must deal with habitat destruction, entanglement in fishing gear, and being poached for their eggs, meat, skin, and shells.", location: "Carrer de Ferran 20, 08002 Barcelona", category: "animals", start_time: "28/01/2021 9:00am", end_time: "28/01/2021 9:00pm", user: user5, organization: organization5)
event_photo8 = URI.open("https://images.unsplash.com/photo-1584039305076-83c699b97416?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fHR1cnRsZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event8.photos.attach(io: event_photo8, filename: "event_photo8.png", content_type: "image/png")
event8.save

# 6
user6 = User.new(first_name: "Sefi", last_name: "Cohen", email: "sefi@gmail.com", password: "password", bio: "I have been living Madrid for the past 7 years. I fell in love with the city the moment I landed here back in 2013.
Up untill recently I worked for the Israeli embassy here and was stationed in Madrid airport. I am passionate about saving the world and animals")
user_avatar6 = URI.open("https://avatars0.githubusercontent.com/u/67965039?v=4")
user6.photo.attach(io: user_avatar6, filename: "user_avatar6.png", content_type: "image/png")
user6.save

# organization
organization6 = Organization.new(name: "Adopta tu Perro", website: "www.adoptatuperro.es", description: "The fundamental mission of the Barcelona Zoo Foundation is the promotion and development of the Barcelona Zoo and it does so by promoting new research, conservation, education and awareness-raising projects in order to become, from the point of view of public service, an instrument aimed at the preservation of biodiversity, the generation of knowledge and awareness of the protection and preservation of ecosystems and the interrelationship between the different forms of life that occur.", location: "Parc de la Ciutadella, 08003 Barcelona", user: user6)
organization_logo6 = URI.open("https://www.flsida.org/sites/default/files/logotipo.png")
organization6.logo.attach(io: organization_logo6, filename: "organization_logo6.png", content_type: "image/png")
banner6 = URI.open("https://images.unsplash.com/photo-1534567153574-2b12153a87f0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8em9vfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
organization6.photos.attach(io: banner6, filename: "banner6.png", content_type: "image/png")
organization6.save

# event
event9= Event.new(title:"Dog Adoption Event", capacity: 20, description: "​Animal Rescue is dedicated to the promotion of care and welfare of companion animals in Upper Kittitas County. Based out of Roslyn, WA, our organization provides a multitude of services including:spay/neuter vouchers, help with vet care for low income families, pet adoption, fostering, supplying pet food for those in need, reuniting lost and found pets with their owners, humane education.", location: "Carrer de Ferran 20, 08002 Barcelona", category: "animals", start_time: "3/01/2021 9:00am", end_time: "3/01/2021 9:00pm", user: user6, organization: organization6)
event_photo9 = URI.open("https://images.unsplash.com/photo-1444212477490-ca407925329e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8ZG9nc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event9.photos.attach(io: event_photo9, filename: "event_photo9.png", content_type: "image/png")
event9.save

event10= Event.new(title:"Clean the Forrest", capacity: 20, description: "​Animal Rescue is dedicated to the promotion of care and welfare of companion animals in Upper Kittitas County. Based out of Roslyn, WA, our organization provides a multitude of services including:spay/neuter vouchers, help with vet care for low income families, pet adoption, fostering, supplying pet food for those in need, reuniting lost and found pets with their owners, humane education.", location: "Carrer de Ferran 20, 08002 Barcelona", category: "animals", start_time: "3/01/2021 9:00am", end_time: "3/01/2021 9:00pm", user: user6, organization: organization6)
event_photo10 = URI.open("https://images.unsplash.com/photo-1605374929764-78c41c71c7e4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTUwfHxhbmltYWxzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
event10.photos.attach(io: event_photo10, filename: "event_photo10.png", content_type: "image/png")
event10.save


# bookings

booking1 = Booking.create!(user: user1 , event: past_event1)
booking2 = Booking.create!(user: user2 , event: past_event1)
booking3 = Booking.create!(user: user3 , event: past_event1)
booking4 = Booking.create!(user: user1 , event: past_event2)
booking5 = Booking.create!(user: user2 , event: past_event3)
booking6 = Booking.create!(user: user1 , event: past_event3)
booking7 = Booking.create!(user: user1 , event: past_event1)
booking8 = Booking.create!(user: user1 , event: past_event3)
booking9 = Booking.create!(user: user1 , event: past_event2)
booking10 = Booking.create!(user: user1 , event: past_event1)
booking11 = Booking.create!(user: user1 , event: past_event3)
booking12 = Booking.create!(user: user1 , event: past_event2)