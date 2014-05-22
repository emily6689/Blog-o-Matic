FactoryGirl.define do
  factory :user do
    sequence(:username) {|n| "user#{n}"}
    sequence(:email) {|n| "user#{n}@nowhere.com"}
    password "abcdefgh"

    factory :admin do
      role 'admin'
    end
  end

  factory :post do
    sequence(:title) {|n| "About Blogs #{n}"}
    body "Ask yourself what you love, care about or wish to share with others. If you're going to write about something regularly and keep your blog fresh with new information, then you need to write about something that stokes your passion or that reflects your daily experience. Try some of these ideas to get your creative juices flowing:\nPolitics. Sure, everyone has an opinion about politics, but you may have a unique point of view that needs to be heard.\nFood. Who doesn't love good food? Share your recipes, start writing reviews of the local cuisine scene or write about how the food that you ate in China was nothing like the food that Chinese restaurants serve in the United States of America.\nMovies. Reviews of movies, old and new, are always fun for movie buffs. And if you keep it fresh by adding clips and pull from sources that nobody else is using, you could have a hit blog on your hands.\nCars. Are you a car enthusiast? Post pictures of your favorite new models or reports from car shows.\nYour business. Your blog doesn't have to be a hobby. A blog can be a fantastic tool for connecting with your customers and for providing them with helpful information."
    author_id 1
  end
end
