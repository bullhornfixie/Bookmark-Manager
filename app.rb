require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  # get data from server at this path localhost:9292
  get '/' do    
    erb :index  
  end

  # displays all the bookmarks after extracting from database
  get '/bookmarks' do  
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  # get submission form 
  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  # post info contained into form (bookmarks/new) to /bookmarks and re-direct to bookmarks
  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
