require_relative "config"

users = [
  {username: "SwaggyP", password: "password", age: 22,gender: "m",location: "NYC",avatar: "http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3243.png&w=350&h=254", created_at: DateTime.new(2015,12,01,8,37)},
  {username: "RFedFan", password: "password", age: 23,gender: "f",location: "NYC",avatar: "http://khansportsnews.com/wp-content/uploads/2015/07/federer-numbers.jpg", created_at: DateTime.new(2015,12,01,4,27)},
  {username: "MessiBessi", password: "password", age: 24,gender: "m",location: "LA",avatar: "http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2015/5/8/1431092391474/Lionel-Messi--009.jpg", created_at: DateTime.new(2015,11,21,4,23)},
  {username: "EllieManning", password: "password", age: 18,gender: "m",location: "LA",avatar: "http://www.sportspickle.com/wp-content/uploads/2012/12/164361dc32671aadea41c0ec7f6b5d6c.jpg", created_at: DateTime.new(2015,11,15,8,11)},
  {username: "KobeDontRetire", password: "password", age: 17,gender: "f",location: "DC",avatar: "https://withmalice.files.wordpress.com/2007/06/kobe2.jpg", created_at: DateTime.new(2015,11,11,12,14)},
  {username: "MishaJordan", password: "password", age: 19,gender: "m",location: "DC",avatar: "http://comicsalliance.com/files/2014/03/SpaceJam02.jpg", created_at: DateTime.new(2015,11,25,5,04)},
  {username: "Maverick", password:"password", age: 27, gender:"m",location:"DC",avatar:"http://www.flickeringmyth.com/wp-content/uploads/2015/06/TopGun1.jpg",created_at:DateTime.new(2015,11,01,3,17)},
  {username: "IceMan", password:"password", age: 27, gender:"m",location:"DC",avatar:"https://images.rapgenius.com/erbqhzmbpwgrthfaoqz1c0517.720x540x1.jpg",created_at:DateTime.new(2015,11,13,5,45)},
  {username: "Goose", password:"password", age: 27, gender:"m",location:"DC",avatar:"http://i.imgur.com/7V9n1N9.png",created_at:DateTime.new(2015,11,11,2,41)}
]

User.create(users)

tags = [
  {sport: "General"},
  {sport: "Tennis"},
  {sport: "Basketball"},
  {sport: "Football"},
  {sport: "Soccer"},
  {sport: "Volleyball"},
  {sport: "Ultimate"},
  {sport: "Quidditch"},
]

Tag.create(tags)

topics = [
{name: "Hey let's play basketball - NYC", user_id: 1, posted_at: DateTime.new(2015,12,01,3,16), content: "Nunc in lorem nec ipsum fringilla fermentum. Sed feugiat ligula sed nulla consequat dictum. Ut eros mauris, vehicula eu consectetur", likes: 11, comment_count: 1, tag: "Basketball"},
{name: "Hey let's football - LA", user_id: 3, posted_at: DateTime.new(2015,12,02,5,42), content: "Morbi et magna vitae massa aliquet blandit. Donec non odio ligula. Phasellus pulvinar dolor eu nisi sodales laoreet. Integer eu.", likes: 17, comment_count: 2, tag: "Football"},
{name: "Oi up for a round of quidditch in Central Park", user_id: 2, posted_at: DateTime.new(2015,12,05,8,19), content: "Integer vel viverra diam. Donec finibus, metus nec malesuada sodales, est nunc ultrices mauris, nec fermentum nisl neque ac augue.", likes: 8, comment_count: 1, tag: "Quidditch"},
{name: "Quidditch in Prospect Park", user_id: 1, posted_at: DateTime.new(2015,12,02,5,16), content: "Sed eleifend quam eu luctus scelerisque. Vivamus tempor arcu ut egestas rhoncus. Cum sociis natoque penatibus et magnis dis parturient.", likes: 21, comment_count: 1, tag: "Quidditch"},
{name: "Bring the ruckus - Rucker Basketball", user_id: 1, posted_at: DateTime.new(2015,12,04,7,34), content: "Quisque eu justo ut libero fermentum condimentum volutpat in velit. Pellentesque in vestibulum velit. Vivamus vitae suscipit mauris. Aenean eget.", likes: 1, comment_count: 1, tag: "Basketball"},
{name: "Harry Potter must not go back to Hogwarts", user_id: 1, posted_at: DateTime.new(2015,12,01,5,11), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 13, comment_count: 0, tag: "Quidditch"},
{name: "Who wears short shorts - Santa Monica", user_id: 4, posted_at: DateTime.new(2015,12,03,2,10), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 15, comment_count: 0, tag: "Tennis"},
{name: "I'll bring an Andre Agassi wig - Flushing", user_id: 2, posted_at: DateTime.new(2015,12,06,7,29), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 3, comment_count: 0, tag: "Tennis"},
{name: "Party like Johnny Manziel - East River Park", user_id: 1, posted_at: DateTime.new(2015,12,02,2,22), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 23, comment_count: 0, tag: "Football"},
{name: "J-E-T-S JETS JETS JETS", user_id: 2, posted_at: DateTime.new(2015,12,01,3,17), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 17, comment_count: 0, tag: "Football"},
{name: "Ole ole ole ole", user_id: 3, posted_at: DateTime.new(2015,12,06,1,41), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 18, comment_count: 0, tag: "Soccer"},
{name: "Been playing Fifa - time to go pro", user_id: 4, posted_at: DateTime.new(2015,12,04,4,44), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 19, comment_count: 0, tag: "Soccer"},
{name: "Looking for Top Gun buddies", user_id: 7, posted_at: DateTime.new(2015,12,03,3,33), content: "I'm a well-muscled heterosexual man looking for other well-muscled heterosexual men to play a rousing heterosexual game of beach volleyball. MUST WEAR JEAN SHORTS. <br> <img src=\"https://fogsmoviereviews.files.wordpress.com/2012/08/top_gun_volleyball_scene.png\" style=\"width:85%;display:block;margin:0 auto;\">", likes: 50, comment_count: 0, tag: "Volleyball"},
{name: "I'm lonely and need friends", user_id: 5, posted_at: DateTime.new(2015,12,01,2,34), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 5, comment_count: 0, tag: "Volleyball"},
{name: "No girls in the volleyball fort", user_id: 6, posted_at: DateTime.new(2015,12,04,3,21), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 13, comment_count: 0, tag: "Volleyball"},
{name: "Ready to play a real sport - frisbee", user_id: 6, posted_at: DateTime.new(2015,12,06,7,11), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 12, comment_count: 0, tag: "Ultimate"},
{name: "If a dog can fetch a frisbee, why can't I", user_id: 3, posted_at: DateTime.new(2015,12,06,9,51), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 8, comment_count: 0, tag: "Ultimate"},
{name: "Is this actually a real sport?", user_id: 4, posted_at: DateTime.new(2015,12,05,11,12), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 7, comment_count: 0, tag: "Ultimate"},
{name: "I'm on fire like Steph Curry", user_id: 5, posted_at: DateTime.new(2015,12,03,3,55), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 15, comment_count: 0, tag: "Basketball"},
{name: "I have a vuvuzela", user_id: 6, posted_at: DateTime.new(2015,12,02,5,22), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 21, comment_count: 0, tag: "Soccer"},
{name: "Country Club Mennis to Society", user_id: 5, posted_at: DateTime.new(2015,12,06,8,43), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 4, comment_count: 0, tag: "Tennis"}
]

Topic.create(topics)

comments = [
  {topic_id: 2, user_id: 1, posted_at: DateTime.new(2015,12,01,4,04), content: "Mauris metus felis, aliquam quis velit et, volutpat gravida sem. Praesent mollis, eros vel dignissim rutrum, odio odio vestibulum sapien."},
  {topic_id: 2, user_id: 3, posted_at: DateTime.new(2015,12,01,4,11), content: "Cras eu mauris dignissim, posuere ante ac, condimentum est. In cursus augue a mi cursus, quis tempor velit ullamcorper. Ut."},
  {topic_id: 1, user_id: 4, posted_at: DateTime.new(2015,12,01,3,07), content: "Etiam in justo in neque cursus sagittis ac vitae quam. Suspendisse varius metus sapien, et varius arcu vestibulum nec. Proin."},
  {topic_id: 4, user_id: 2, posted_at: DateTime.new(2015,12,01,4,04), content: "Sed feugiat mattis lectus eu ultrices. Phasellus at suscipit mauris. Sed semper mauris arcu, sit amet venenatis mi iaculis et."},
  {topic_id: 5, user_id: 1, posted_at: DateTime.new(2015,12,01,4,04), content: "Aenean vel consectetur nulla, ac ultrices mi. Donec volutpat neque turpis, nec consectetur lacus aliquet a. Sed vel sapien tempor."},
  {topic_id: 3, user_id: 3, posted_at: DateTime.new(2015,12,01,4,04), content: "Aenean ut augue eu urna laoreet elementum. Vestibulum dolor nisl, maximus et nisl ac, rutrum auctor enim. Cum sociis natoque."},
  {topic_id: 13, user_id: 9, posted_at: DateTime.new(2015,12,04,4,04), content: "Great volleyballs of fire!"},
  {topic_id: 13, user_id: 8, posted_at: DateTime.new(2015,12,04,4,14), content: "You two really are cowboys"},
  {topic_id: 13, user_id: 7, posted_at: DateTime.new(2015,12,04,4,16), content: "What's your problem Iceman?!?"}, 
  {topic_id: 13, user_id: 8, posted_at: DateTime.new(2015,12,04,4,20), content: "You're everyone's problem. That's because every time you go up in the air, you're unsafe. I don't like you because you're dangerous. <br> <img src=\"http://www.theweeklings.com/wp-content/uploads/1bite.jpg\" style=\"width:40%;display:block;margin:0 auto;\">"}, 
  {topic_id: 13, user_id: 7, posted_at: DateTime.new(2015,12,04,4,22), content: "That's right! Ice... man. I am dangerous. <br> <img src=\"http://www.joblo.com/newsimages1/unpopular-top-gun-iceman.jpg\" style=\"width:40%;display:block;margin:0 auto;\">"}     
]

Comment.create(comments)