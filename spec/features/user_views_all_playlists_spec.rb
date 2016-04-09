RSpec.feature "User views all playlist" do
  scenario 'they see all playlists' do
    song_one, song_two, song_three = create_list(:song, 3)
    playlist = create(:playlist)

    visit playlists_path
    expect(page).to have_link playlist.name, href: playlist_path(playlist)
  end
end
