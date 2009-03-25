#$:.unshift *Dir[File.dirname(__FILE__) + "/vendor/*/lib"]
#require 'sinatra/cache-control'

require 'rubygems'
require 'sinatra'
require 'rack/cache'

get '/' do
  sleep(2)
  @gems = `gem list`.split("\n")
  haml (<<-HAML).gsub(/^  /, "")
  %h1 Gems on Heroku as of #{Time.now}!
  %ul
    - for gem in @gems
      %li= gem
  HAML
end
