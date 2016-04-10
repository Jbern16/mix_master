require 'rails_helper'

RSpec.feature "User edits a playlist" do
  scenario "they see the updated playlist" do
  song_one, song_two, song_three = create_list(:song, 3)

  playlist = create(:playlist)

  visit playlist_path(playlist)

  click_on "Edit Playlist"
  fill_in  "playlist_name", with: "New Name"
  check("song-#{song_two.id}")
  click_on "Update Playlist"

  expect(page). to have_content "New Name"
  end
end
