require "json"
require 'jekyll-assets'
require 'bundler/setup'

Bundler.require(:default, 'development')

if defined?(RailsAssets)
  RailsAssets.load_paths.each do |path|
    Sprockets.append_path path
  end
end
