# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Organization.destroy_all
Event.destroy_all
User.destroy_all

# user 
user1 = User.create!(first_name: "", last_name: "", email: "", password: "")
# event
event1 = Event.new(title: "", photo: "", description: "", location: "", category: "", start_date: "", end_date: "", start_time: "", end_time: "", user: "", organization: "")
event_photo1 = Uri.open()
event1.photo.attach(io: event_photo1, filename: "event_photo1.png", content_type: "image/png")
event1.save
# organization 
organization1 = Organization.new(name: "", website: "", description: "", location: "", logo: "", user: "")
organization_logo1 = Uri.open()
organization1.photo.attach(io: organization_logo1, filename: "organization_logo1.png", content_type: "image/png")
organization1.save


