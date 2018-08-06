require 'sinatra'
require 'sinatra/reloader'

num = rand(101)

get '/' do
    "The secret number is #{num}"
end