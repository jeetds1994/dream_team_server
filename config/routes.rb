Rails.application.routes.draw do
  resources :player_squads
  resources :user_clubs
  namespace :api do
    namespace :v1 do
      resources :players
      resources :squads
      resources :clubs
      resources :users
    end
  end
end
