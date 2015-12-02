require_relative "config"

users = [
  {username: "SwaggyP",age: 22,gender: "m",location: "NYC",avatar: "http://www.avatarist.com/avatars/People/Abraham-Lincoln.jpg", created_at: DateTime.new(2015,12,01,8,37)},
  {username: "RFedFan",age: 23,gender: "f",location: "LI",avatar: "http://www.avatarist.com/avatars/People/Al-Capone.jpg", created_at: DateTime.new(2015,12,01,4,27)},
  {username: "MessiBessi",age: 24,gender: "m",location: "Albany",avatar: "http://www.avatarist.com/avatars/People/Albert-Einstein.jpg", created_at: DateTime.new(2015,11,21,4,23)},
  {username: "EllieManning",age: 18,gender: "m",location: "Syracuse",avatar: "http://www.avatarist.com/avatars/People/Anna-Nicole-Smith.jpg", created_at: DateTime.new(2015,11,15,8,11)},
  {username: "DontRetireKobe",age: 17,gender: "f",location: "NYC",avatar: "http://www.avatarist.com/avatars/People/Barack-Obama.jpg", created_at: DateTime.new(2015,11,11,12,14)},
  {username: "MishaJordan",age: 19,gender: "m",location: "LI",avatar: "http://www.avatarist.com/avatars/People/Benjamin-Franklin.png", created_at: DateTime.new(2015,11,25,5,04)}
]

User.create(users)

forums = [
  {sport: "general"},
  {sport: "tennis"},
  {sport: "basketball"},
  {sport: "football"},
  {sport: "soccer"},
  {sport: "volleyball"},
  {sport: "ultimate frisbee"},
  {sport: "quidditch"},
]

Forum.create(forums)

topics = [
{topic_name: "Hey let's play", user_id: 1, posted_at: DateTime.new(2015,12,01,5,16), content: "Nunc in lorem nec ipsum fringilla fermentum. Sed feugiat ligula sed nulla consequat dictum. Ut eros mauris, vehicula eu consectetur", likes: 11},
{topic_name: "Hey let's play again", user_id: 1, posted_at: DateTime.new(2015,12,01,5,16), content: "Morbi et magna vitae massa aliquet blandit. Donec non odio ligula. Phasellus pulvinar dolor eu nisi sodales laoreet. Integer eu.", likes: 11},
{topic_name: "Still hey let's play", user_id: 1, posted_at: DateTime.new(2015,12,01,5,16), content: "Integer vel viverra diam. Donec finibus, metus nec malesuada sodales, est nunc ultrices mauris, nec fermentum nisl neque ac augue.", likes: 11},
{topic_name: "Hey... let's play...", user_id: 1, posted_at: DateTime.new(2015,12,01,5,16), content: "Sed eleifend quam eu luctus scelerisque. Vivamus tempor arcu ut egestas rhoncus. Cum sociis natoque penatibus et magnis dis parturient.", likes: 11},
{topic_name: "Hey let's play tennis", user_id: 1, posted_at: DateTime.new(2015,12,01,5,16), content: "Quisque eu justo ut libero fermentum condimentum volutpat in velit. Pellentesque in vestibulum velit. Vivamus vitae suscipit mauris. Aenean eget.", likes: 11},
{topic_name: "Hey let's play basketball", user_id: 1, posted_at: DateTime.new(2015,12,01,5,16), content: "Phasellus sapien dolor, molestie nec ante ut, scelerisque hendrerit mauris. Mauris sit amet augue a nisl fermentum euismod sed vel.", likes: 11}
]

Topic.create(topics)

comments = [
  {topic_id: 2, user_id: 1, posted_at: DateTime.new(2015,12,01,4,04), content: "Mauris metus felis, aliquam quis velit et, volutpat gravida sem. Praesent mollis, eros vel dignissim rutrum, odio odio vestibulum sapien."},
  {topic_id: 2, user_id: 3, posted_at: DateTime.new(2015,12,01,4,11), content: "Cras eu mauris dignissim, posuere ante ac, condimentum est. In cursus augue a mi cursus, quis tempor velit ullamcorper. Ut."},
  {topic_id: 1, user_id: 4, posted_at: DateTime.new(2015,12,01,3,07), content: "Etiam in justo in neque cursus sagittis ac vitae quam. Suspendisse varius metus sapien, et varius arcu vestibulum nec. Proin."},
  {topic_id: 4, user_id: 2, posted_at: DateTime.new(2015,12,01,4,04), content: "Sed feugiat mattis lectus eu ultrices. Phasellus at suscipit mauris. Sed semper mauris arcu, sit amet venenatis mi iaculis et."},
  {topic_id: 5, user_id: 1, posted_at: DateTime.new(2015,12,01,4,04), content: "Aenean vel consectetur nulla, ac ultrices mi. Donec volutpat neque turpis, nec consectetur lacus aliquet a. Sed vel sapien tempor."},
  {topic_id: 3, user_id: 3, posted_at: DateTime.new(2015,12,01,4,04), content: "Aenean ut augue eu urna laoreet elementum. Vestibulum dolor nisl, maximus et nisl ac, rutrum auctor enim. Cum sociis natoque."}
]

Comment.create(comments)

Forum.find(1).topics.push(Topic.find(1))
Forum.find(3).topics.push(Topic.find(2))
Forum.find(4).topics.push(Topic.find(3))
Forum.find(1).topics.push(Topic.find(4))
Forum.find(1).topics.push(Topic.find(5))
Forum.find(3).topics.push(Topic.find(6))