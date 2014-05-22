module Seeders
  module PostsSeeder

    title1 = "All About Blogs #{n}"
    title2 = "All About Blogs #{n+1}"
    body1 = "Ask yourself what you love, care about or wish to share with others. If you're going to write about something regularly and keep your blog fresh with new information, then you need to write about something that stokes your passion or that reflects your daily experience. Try some of these ideas to get your creative juices flowing:\nPolitics. Sure, everyone has an opinion about politics, but you may have a unique point of view that needs to be heard.\nFood. Who doesn't love good food? Share your recipes, start writing reviews of the local cuisine scene or write about how the food that you ate in China was nothing like the food that Chinese restaurants serve in the United States of America.\nMovies. Reviews of movies, old and new, are always fun for movie buffs. And if you keep it fresh by adding clips and pull from sources that nobody else is using, you could have a hit blog on your hands.\nCars. Are you a car enthusiast? Post pictures of your favorite new models or reports from car shows.\nYour business. Your blog doesn't have to be a hobby. A blog can be a fantastic tool for connecting with your customers and for providing them with helpful information."
    body2 = "Think about how you want to help people. While you want to know your broad subject area, you need to focus your blog topics more narrowly, so that it has a clear purpose. Here are some ideas for ways that your blog can connect with your intended audience:\nTeach something. If you're passionate about a particular subject, and you have a lot of experience in that area, then you can offer your knowledge to both people who are new to the subject and others who are as experienced as you are.\nProvide the latest news and trends. Write about the latest developments related to your topic. You want to be someone who's viewed as the ultimate insider so that you can continue to increase your blog's readership.\nMake people laugh. Are you the funniest person you know? No matter what your subject area, you can present your experiences and thoughts in a humorous way that will really resonate with people.\nInspire others. Have you overcome an obstacle, such as a serious illness or a difficult life experience? Do you want to turn your challenges into something that will inspire others to overcome their problems? If that's the case, then make your blog inspirational.\nKnow what not to blog about too. Your workplace, your coworkers, your family members, etc. may take a dim view of anything on your blog if it blows open secrets, shares confidential information, makes fun of people you work or live with, or causes other people trouble. Know the limits––check with your workplace what is and is not permissible by way of personal blogging and ask your mates and family before including them in your posts."

    class << self
      def seed
        (1..5).each do |n|
          Post.find_or_create_by(title: title1, body: body1)
          Post.find_or_create_by(title: title2, body: body2)
        end
      end
    end
  end
end
