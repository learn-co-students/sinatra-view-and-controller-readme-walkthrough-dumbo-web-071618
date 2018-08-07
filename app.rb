require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original = params["string"]
    @reversed = original.reverse
    erb :reversed
  end
  # instance variables cannot be passed
  # between controller methods
  get '/friends' do
    @friends = ['Emily Wilding Davison',
      'Harriet Tubman',
      'Joan of Arc',
      'Malala Yousafzai',
      'Sojourner Truth']
    erb :friends
  end
end
