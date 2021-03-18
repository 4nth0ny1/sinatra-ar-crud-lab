require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @articles = Article.all
  end

  get '/articles' do 
    
  end 

  get '/articles/new' do 
    erb :new

  end

  get '/articles/:id' do 
    
  end 
  
  post '/articles' do 
    Article.create(title: params[:title] , content: params[:content])
    erb :show
  end 
end
