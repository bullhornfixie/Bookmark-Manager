require './lib/bookmark'
# access Bookmark class 

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      # calling .all method on instance of Bookmark class
      # see bookmark.rb file saved in lib folder 

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end

