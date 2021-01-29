feature "adding a bookmark" do
  scenario "when on the bookmarks page" do
    visit('/bookmarks/new')
    fill_in("url", with: "https://www.bbc.co.uk")
    click_button("Submit")
    
    expect(page).to have_content("https://www.bbc.co.uk")
  end
end