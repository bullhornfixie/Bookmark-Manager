require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end
end

# Bookmark class access book_mark manager database
# get all rows from bookmarks table 
# extract all urls and save to result 