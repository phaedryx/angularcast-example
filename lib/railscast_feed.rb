require 'feedzirra'

class RailscastFeed
  def self.sync
    # add additional elements to be parsed from the feed entries
    Feedzirra::Feed.add_common_feed_entry_element(:enclosure, :value => :url, :as => :video_url)
    Feedzirra::Feed.add_common_feed_entry_element('itunes:duration', :as => :duration)

    feed = Feedzirra::Feed.fetch_and_parse("http://feeds.feedburner.com/railscasts")
    feed.entries.each do |entry|
      Episode.create_from(entry, 'railscasts')
    end
  end
end
