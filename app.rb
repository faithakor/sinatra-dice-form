require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index, locals: { rolls: nil, dice: nil, sides: nil }
end

get "/process_roll" do
  
  dice = params['dice'].to_i
  sides = params['sides'].to_i

  rolls = Array.new(dice) { rand(1..sides) }
  erb :index, locals: { rolls: rolls, dice: dice, sides: sides }
end
