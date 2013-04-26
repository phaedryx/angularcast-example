require 'railscast_feed'

namespace :episode_sync do
  desc 'sync all missing episodes from Railscasts.com'
  task :railscasts => :environment do
    RailscastFeed.sync
  end
end
