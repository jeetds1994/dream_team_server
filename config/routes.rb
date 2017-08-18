Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :club_formations
      resources :formations
      resources :player_squads
      resources :user_clubs
      resources :players
      resources :squads
      resources :clubs
      resources :users
    end
  end
end
