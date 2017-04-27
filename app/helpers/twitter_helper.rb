module TwitterHelper
  def parse_timeline()
    timeline = $client.home_timeline()
    timeline.each do | tweet |
      Tweet.create(
        user_name: tweet.user.name,
        text: tweet.text,
        avatar: tweet.user.profile_image_url,
        handle: tweet.user.screen_name,
        possibly_sensitive: tweet.possibly_sensitive?,
        )
    end
  end

  def getLatestTweets(number_of_tweets)
    return Tweet.last(number_of_tweets)
  end

  def clearOldTweets()
    Tweet.where("created_at < '#{1.days.ago}'").destroy_all
  end
end
