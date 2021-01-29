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
    url = params['url'] 
    connection = PG.connect(dbname: 'bookmark_manager_test') 
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/bookmarks'
    # get the url from the submitted form data(params)
    # connect to the database
    # execute the SQL to insert a new bookmark into database 
    # redirect to the /bookmarks route defined in app.rb 
  end

  run! if app_file == $0
end
