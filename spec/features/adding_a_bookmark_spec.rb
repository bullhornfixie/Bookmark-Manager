feature "adding a bookmark" do
  scenario "when on the bookmarks page" do

    visit('/bookmarks/new')
    fill_in("url", with: "https://www.bbc.co.uk")
    click_button("Submit")

    visit('/bookmarks/new')
    expect(page).to have_content("https://www.bbc.co.uk")
  end
end

# failing test 
# on submitting, the URL is inserted into bookmark_manager_test database 
# on viewing the test is looking for www.bbc.co.uk along with the other expectations from other tests in bookmark_manager_test