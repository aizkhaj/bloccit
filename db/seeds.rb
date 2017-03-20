require 'random_data'

#Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

# Create a unique post that doesn't repeat when seeded.
post_151 = Post.find_or_create_by!(
  title: "blablablabla",
  body: "more bla"
)

posts = Post.all

#Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create a unique comment in the above referenced unique post.
Comment.find_or_create_by!(
  post: post_151,
  body: "that is a lot of bla"
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
