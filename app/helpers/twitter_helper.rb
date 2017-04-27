module TwitterHelper
  def load_timeline()
    storyfeed =''
    timeline = $client.home_timeline()
    timeline.each do | tweet |
      if not tweet.possibly_sensitive?
        storyfeed = storyfeed + ' • ' + "#{tweet.user.name} - #{tweet.text}"
      end
    end
    Widget.create(
      data_url: 'twitter.com',
      data_source: 'twitter_timeline',
      data_string: storyfeed,
      size: 'medium',
      name: 'twitter_timeline'
      )
  end
end
