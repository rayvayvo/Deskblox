module NewsHelper
  def self.getHeadlines(feed_type, number_articles)
    storyfeed =''
    feed_url = case feed_type
      when 'local' then 'http://www.thestar.com/feeds.articles.news.rss'
      when 'topstory' then 'http://rss.cbc.ca/lineup/topstories.xml'
      when 'onion'  then 'http://www.theonion.com/feeds/rss'
      else ''
    end


    feed = Feedjira::Feed.fetch_and_parse feed_url
    all_items = feed.entries[0,number_articles]
    all_items.each do | story |
      storyfeed = storyfeed + ' • ' + story.title
    end
    Widget.create(
      data_url: feed_url,
      data_source: feed_type,
      data_string: storyfeed,
      size: "medium",
      name: "#{feed_type}_news"
      )

  end



  def self.clearOldNews()
    Widget.where("data_source = 'local' OR data_source = 'topstory' AND created_at < '#{1.days.ago}'").destroy_all
  end
end

