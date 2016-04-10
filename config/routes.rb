Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:new, :create]
  end

  resources :songs, only: [:show]
  resources :playlists

  get '/auth/spotify/callback', to: 'sessions#create'
  delete '/logout_path', to: 'sessions#destroy'
end
