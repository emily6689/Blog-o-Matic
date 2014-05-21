# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create!(username: "bestUserEver", email: "userr@example.com", password: "abcdefghijklm")

(1..1).each do |n|
  Post.create!(author: user1 , title: "Post #{n}", body: "If you recognize that line, you’re likely a fellow literary enthusiast with a penchant for classics, like me. Maybe Shakespeare is your forte, or maybe you go even further back. Maybe you’re a Homer or Socrates fanatic; maybe you get your kicks out of allusions to the Old Testament. Around here, we’ll mostly be discussing works from the 1800s and later, but even if you’re not interested in the more modern literature of Jane Austen and C.S. Lewis, it doesn’t mean you won’t find something to bewitch your mind and ensnare your senses (Harry Potter, anyone?).\nSo without further ado, our first topic and my favorite book of all time, forever unparalleled, the epitome of literary greatness, so much so that it’s included in the title: F. Scott Fitzgerald’s The Great Gatsby.\nAs those who’ve taken any variety of Honors English course in high school already know, Gatsby is a story of love, loneliness, and the Lost Generation of the 1920s. Fitzgerald himself was a prominent member of the society that he writes about, so his descriptions and imagery of the era are authentic to a tee. But it’s not just the rich language and profound historical accuracy that have impressed English majors for decades; it’s the quintessential star-crossed romance, the themes of the American Dream and social classes that really distinguish it from others of its kind.\nFor anyone who isn’t familiar with the plot, here’s a simple summary (spoilers ahead!): young lovers Jay Gatsby and Daisy Buchanan begin a relationship before Gatsby leaves her to fight in World War I. When he returns to go to school, he discovers that his beloved Daisy has found her way into the arms of a richer man. Gatsby then devotes himself to becoming the ideal candidate for her love so he can win her back. Unfortunately for Gatsby, it isn’t that easy.")
end
