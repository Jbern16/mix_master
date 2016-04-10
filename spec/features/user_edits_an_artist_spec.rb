RSpec.feature "User edits an artist" do
  scenario "they see a form to edit the artist" do
  artist_name       = "Bob Marley"
  artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
  updated_name = "Beyonce"

  artist = Artist.create(name: artist_name,
                image_path: artist_image_path)



  visit artist_path(artist)

  click_on "Edit Artist"
  fill_in "artist_name", with: updated_name
  fill_in "artist_image_path", with: artist_image_path

  click_on "Update Artist"

   expect(page).to have_content updated_name
   expect(page).to_not have_content artist.name
   expect(page).to have_css("img[src=\"#{artist.image_path}\"]")
  end
end
