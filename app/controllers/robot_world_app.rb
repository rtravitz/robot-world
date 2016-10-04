require_relative '../models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :dashboard
  end

  get '/robots/new' do
    erb :new
  end

  get '/robots' do
    erb :index
  end

  post '/robots' do
    robot = Robot.new(params[:robot])
    robot.save
    redirect "/robots"
  end





end
