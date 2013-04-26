class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :description
      t.datetime :pub_date
      t.string :video_url
      t.string :link
      t.string :guid
      t.string :duration
      t.string :source

      t.timestamps
    end
  end
end
