# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'random_data'

 
 # Create Users
 5.times do
   User.create!(
 # #3
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all
 
  # Create Topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all
 
 # Create Posts
 i = 0
 50.times do
 
 i += 1
 i%5==0 ? title_data = "SPAMS" : title_data = RandomData.random_sentence
   Post.create!(
 
     user:   users.sample,
     topic:  topics.sample,
     title:  title_data,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 50.times do
 
 SponsoredPost.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     price:  RandomData.rand_data
   )
 end
 
 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 50.times do
 
   Advertisement.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     price:  RandomData.rand_data
   )
 end
 
  50.times do
 
   Question.create!(
 # #2
     title:     RandomData.random_sentence,
     body:      RandomData.random_paragraph,
     resolved:  RandomData.random_bool
   )
 end
 
 user = User.first
 user.update_attributes!(
   email: 'meghana1602@gmail.com', 
   password: 'helloworld'
 )
 
 #unique_post = Post.find_or_create_by(title: "Ruby On Rails", body: "Ruby on Rails is a Web-development framework")
 #unique_post.comments.create(body: "Ruby is quite powerful and easy to use. Love it!! :)")
 
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Question.count} Questions created"
 puts "#{Advertisement.count} advertisements created"
 puts "#{Post.count} posts created"
 puts "#{SponsoredPost.count} SponsoredPosts created"
 puts "#{Comment.count} comments created"
 puts "Seed finished"