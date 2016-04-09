require "rails_helper"

RSpec.feature "User deletes an artist" do
  scenario "when they delete an artist that artist no longer exists and isnt shown" do
  artist_name       = "Bob Marley"
  artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

  Artist.create(name: artist_name,
                image_path: artist_image_path)

  visit artist_path(Artist.last.id)


  click_on 'Delete Artist'
  expect(current_path).to eq artists_path
  expect(page).not_to have_content "Bob Marley"
end
end
