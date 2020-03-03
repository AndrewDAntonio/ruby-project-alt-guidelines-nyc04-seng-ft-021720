require_relative '../config/environment'
require 'guidebox'

puts "hello world"

def menu
    prompt = TTY::Prompt.new
    prompt.select() do |menu|
    end
end

#api curl http://api-public.guidebox.com/v2/genres?api_key=84b68f0497dc6bc45b5e600947b3156bf9c7743c
#genre curl http://api-public.guidebox.com/v2/genres?api_key=84b68f0497dc6bc45b5e600947b3156bf9c7743c