require 'sinatra'
require 'sinatra/reloader'

NUM = rand(10)

def guess_check(guess)
    guess = guess.to_i
    if guess >= NUM + 5
        message = 'Way too high!'
    elsif guess <= NUM - 5
        message = 'Way too low!'
    elsif guess == NUM
        message = 'You got it!'
    elsif guess > NUM
        message = 'Too high!'
    elsif guess < NUM
        message = 'Too low!'
    end
end

get '/' do
    guess = params['guess']
    message = guess_check(guess)
    erb :index, :locals => {:num => NUM, :message => message}
end