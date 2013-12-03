
client = Mongo::MongoClient.new("localhost", 27017)
db = client.db('demo_blog_app')

posts = db['posts']


u = users.find(name: {'$in' => [:Alice, :Bob]}).map { |u| u["_id"] }
# HOW CAN I Do THIS? update_users_object = users.find(name: {'$in' => [:Alice, :Bob]}).map { |u| u }


users = db.collection 'users'


require 'faker'


# 2 - add 10 sample documents with: "title" and "content" fields filled with lorem ipsum (use Faker)


10.times{
 posts.insert( {
  title: Faker::Lorem.sentence(1),
  content: Faker::Lorem.paragraphs(1),
  user_id: u.sample
  } )
}


# 3 add 10 sample comments with:
# a "content" field filled with lorem ipsum (use Faker)
# a "user_id" field set to Alice, Bob or Charlie's _id
# and a "post_id" field set to one of the existing posts' _id values

p = posts.find().map { |p| p["_id"] }
comments = db['comments']
10.times{
 comments.insert( {
  content: Faker::Lorem.paragraphs(1),
  user_id: u.sample,
  post_id: p.sample
  } )
}

# find all posts by Alice

alice_id = users.find_one( { name: "Alice"})['_id']
a_posts_id = posts.find( { user_id: alice_id } )
a_posts = a_posts_id.each { |p| puts p["content"] }


# find all comments by Alice

alice_id = users.find_one( { name: "Alice"})['_id']
a_comments_id = comments.find( { user_id: alice_id } )
a_comments = a_comments_id.map { |p| p["content"] }


# find all posts by Bob that have at least one comment
bob_id = users.find_one( { name: "Bob"})['_id']
b_posts_id = posts.find( { user_id: bob_id }, fields: ['post_id'])
b_posts_arr = b_posts_id.map { |p| p['_id'] }


comments_ids = comments.find.map { |c| c['post_id'] }
comments_arr = comments_ids.compact

answer = b_posts_arr & comments_arr



# find all posts by Bob that Alice has commented on
bob_id = users.find_one( { name: "Bob"})['_id']
b_posts_id = posts.find( { user_id: bob_id }, fields: ['post_id'])
b_posts_arr = b_posts_id.map { |p| p['_id'].to_s }


comments_alice = comments.find( post_id: {'$in' => b_posts_arr }, user_id: alice_id, fields: ['post_id'])

bob_posts_commented_alice = comments_alice.map { |p| p['post_id'] }


# comm = comments.map { |p| p['user_id'] }


# alice_id = users.find_one( { name: "Alice"})['_id']


# a_comments = comments.find( { user_id: alice_id }, {fields: ['post_id']})


# comments_arr = a_comments.find.map { |c| c['post_id'] }

# find all posts by Bob that Alice or Charlie has commented on

b_a_c_user_ids = users.find( name: {'$in' => [:Alice, :Bob, :Charlie]}, fields: ['_id'])

u = b_a_c_user_ids.map { |u| u["_id"] }


B) Denormalized Schema



 



