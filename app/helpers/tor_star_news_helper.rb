module TorStarNewsHelper
  def getHeadlines(feed_type, number_articles)
    storyfeed =''
    feed_url = case feed_type
      when 'local' then 'http://www.thestar.com/feeds.articles.news.rss'
      when 'topstory' then 'http://rss.cbc.ca/lineup/topstories.xml'
      else ''
    end
    feed = Feedjira::Feed.fetch_and_parse feed_url
    all_items = feed.entries[0,number_articles]
    all_items.each do | story |
      storyfeed = storyfeed + ' • ' + story.title
    end
    return storyfeed
  end
end