# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

users = [{email: "frog@mail.com", password: "qwertyui"}, 
	     {email: "megaman@mail.com", password: "superbig"},
	     {email: "me@mail.com", password: "abcd1234"},
	     {email: "Adam@example.com", password: "allnumbers"},
	     {email: "Smith@gmail.com", password: "12345678"}]

user_profs = [{first_name: "John", last_name: "Doe", telephopne_number: "555-212-9984"}, 
			  {first_name: "Sara", last_name: "Kay", telephopne_number: "555-333-4444"},
			  {first_name: "Dick", last_name: "Snow", telephopne_number: "555-555-6767"},
			  {first_name: "Angi", last_name: "Pullman", telephopne_number: "555-599-5837"},
			  {first_name: "Rob", last_name: "Zombie", telephopne_number: "555-743-1423"}]

places = [{name: "Chatty Chalet", description: "Quaint but talkative hideaway", 
	       location: "San Francisco",owner_id: 1},
	      {name: "Cool Castle", description: "Medieval comfort in classic style", 
	       location: "Berkeley",owner_id: 2},
	      {name: "Vapid Victorian", description: "Stylish but empty", 
	       location: "Oakland",owner_id: 3},
	      {name: "Freaky Federalist", description: "Properly appointed and trimmed", 
	       location: "San Francisco",owner_id: 4},
	      {name: "Radical Ranch", description: "Single story, but outta this world!", 
	       location: "Hayward",owner_id: 5}]

open_times = [{start_time: "2016-05-09 19:00:00", end_time: "2016-05-09 23:00:00", place_id: 1 },
              {start_time: "2016-05-11 18:00:00", end_time: "2016-05-11 20:00:00", place_id: 1 },
              {start_time: "2016-05-12 14:00:00", end_time: "2016-05-09 18:30:00", place_id: 1 },
              {start_time: "2016-05-14 10:30:00", end_time: "2016-05-14 22:30:00", place_id: 1 },
              {start_time: "2016-05-09 16:00:00", end_time: "2016-05-09 22:00:00", place_id: 2 }]

bookings = [{start_time: "2016-05-09 19:00:00", end_time: "2016-05-09 23:00:00", place_id: 1, guest_id: 3 },
            {start_time: "2016-05-12 16:00:00", end_time: "2016-05-12 18:00:00", place_id: 1, guest_id: 2 }]

reviews = [{guest_id: 5, place_id: 1, body: "Only good for conversation", rating: 2},
           {guest_id: 4, place_id: 1, body: "Love this cute place!", rating: 5},
           {guest_id: 3, place_id: 1, body: "Quirky is a better description. Not bad, tho", rating: 3},
           {guest_id: 5, place_id: 2, body: "A stone meat locker", rating: 1},
           {guest_id: 2, place_id: 3, body: "Ascetic interior design here...", rating: 3}]

pictures = [{place_id: 5, img_url: "https://pixabay.com/static/uploads/photo/2015/11/07/21/29/living-1032733_960_720.jpg"},
            {place_id: 1, img_url: "https://pixabay.com/static/uploads/photo/2015/03/07/16/56/home-663241_960_720.jpg"},
            {place_id: 2, img_url: "https://i.ytimg.com/vi/fg1o5OT5h4U/hqdefault.jpg"},
            {place_id: 3, img_url: "https://pixabay.com/static/uploads/photo/2015/05/31/11/31/restaurant-791207_960_720.jpg"},
            {place_id: 4, img_url: "https://pixabay.com/static/uploads/photo/2014/08/11/21/31/apartment-416039_960_720.jpg"}]

# ---------------------------
# Create records
# ---------------------------

users.each {|u| User.create(u)}

all_users = User.all

all_users.each_with_index {|u, i| u.create_user_profile(user_profs[i])}

places.each {|p| Place.create(p)}

open_times.each {|ot| OpenTime.create(ot)}

bookings.each {|b| Booking.create(b)}

reviews.each {|r| Review.create(r)}

pictures.each {|pic| Picture.create(pic)}




