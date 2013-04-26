class Episode < ActiveRecord::Base
  attr_accessible :description, :duration, :link, :pub_date, :title, :video_url

  validates :guid, presence: true, uniqueness: [ scope: :source ]
  validates :title, :description, :pub_date, :video_url, :link, :source, presence: true

  def self.create_from(entry, source)
    Episode.where(:guid => entry.entry_id, :source => source).first_or_create(
      title:       entry.title,
      description: entry.summary,
      pub_date:    entry.published,
      video_url:   entry.video_url,
      link:        entry.url,
      duration:    entry.duration
    )
  end
end
