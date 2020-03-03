require_relative '../config/environment'

puts "hello world"

def menu
    prompt = TTY::Prompt.new
    prompt.select() do |menu|
        menu.
    end
end