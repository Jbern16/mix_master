require 'rails_helper'

RSpec.feature "User can see all artists" do
  scenario "they see a page showing all artists" do
    artist_name       = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

  Artist.create(name: artist_name,
                image_path: artist_image_path)

  visit artists_path

  expect(page).to have_content "Bob Marley"
end
end
