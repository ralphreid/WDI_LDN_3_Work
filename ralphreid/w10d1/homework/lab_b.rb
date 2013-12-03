db = client.db("demo_blog_app2")
posts = db["posts"]
users = db.collection "users"
users = db["users"]


alice = {
  name: "Alice",
  age: 25,
  address: "1 Main Street, London",
  hobbies: ["sailing", "walking"]
}

bob = {
  name: "Bob",
  age: 46,
  address: "2 Main Street, London",
  children: [
    {name:"Foo", age:10},
    {name:"Bar", age:8},
    {name:"Baz", age:5}
  ]
}

charlie = {
  name: "Charlie",
  age: 31,
  children: [
    {name:"Foo", age:5, hobbies: ["painting"]}
  ]
}

users.insert    

u = users.find(name: {'$in' => [:Alice, :Bob]}).map { |u| u["_id"] }    
u_a = users.find(name: {'$in' => [:Alice, :Bob, :Charlie]}).map { |u| u["_id"] }

10.times{
  r = rand(1..5)
  posts.insert( {
    title: Faker::Lorem.sentence(1),
    content: Faker::Lorem.paragraphs(1),
    user_id: u.sample,
    r.times{
      comments.insert( {
        content: Faker::Lorem.paragraphs(1),
        user_id: u_a.sample
      } ) }
  } )
}