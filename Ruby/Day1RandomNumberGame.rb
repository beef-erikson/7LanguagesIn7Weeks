# Simple guess the number game

random_number = rand(10).to_int + 1
guess = 0

while guess != random_number
    print 'Enter a number from 1 to 10: '
    guess = gets.to_i
    
    if guess < random_number
        puts "Your guess is too low. \n\n"
    end
    if guess > random_number
        puts "Your guess is too high. \n\n"
    end
end

puts 'You guessed correctly!'