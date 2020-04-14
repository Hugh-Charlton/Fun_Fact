require 'colorize'
require 'faker'

i = 0

puts "Would you like a Chuck Norris fact?"
input = gets.strip.downcase

loop do

    x = :red

    number = rand(0..3)
    case number
    when 0
        x = :yellow
    when 1
        x = :blue
    when 2
        x = :magenta
    when 3
        x = :green
    end

    if input == "yes" || input == "y"
        puts Faker::ChuckNorris.fact.colorize(x)
        puts "Would you like another Chuck Norris fact?"
        i = 0
    elsif input == "no" || input == "n"
        puts ":(".colorize(:blue)
        break
    else
        i += 1
        if i > 2
            puts "You have failed to input a correct answer 3 times in a row, goodbye".colorize(:red)
            break
        end
        puts "Please eneter yes or no..."
    end

    input = gets.strip.downcase
end