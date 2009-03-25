require 'lameet1'
require 'lameet2'

map "http://lameet1.heroku.com" do
  run LAMeet1
end
map "http://lameet2.heroku.com" do
  run LAMeet2
end
