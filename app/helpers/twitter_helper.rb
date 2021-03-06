module TwitterHelper
  def self.parse_timeline()
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
    Widget.create(
      data_url: 'twitter.com',
      data_source: 'twitter_timeline',
      data_string: 'N/A',
      size: "large",
      name: "twitter"
      )
    clearOldTweets()
  end

  def self.getLatestTweets(number_of_tweets)
    return Tweet.last(number_of_tweets)
  end

  def self.clearOldTweets()
    Tweet.where("created_at < '#{1.days.ago}'").destroy_all
  end
end
