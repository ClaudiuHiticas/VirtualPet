Rails.application.routes.draw do
  resources :toys
  resources :foods
  resources :pets
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # AdoptionCenter Controller
  post '/adopt_pet/:pet_id', to: 'adoption_center#adopt_pet'

  # FeedingSystem Controller
  post '/feed_pet/:pet_id/:food_id', to: 'feeding_system#feed_pet'

  # Playtime Controller
  post '/play_with_pet/:pet_id/:toy_id', to: 'playtime#play_with_pet'

  # PetDashboard Controller
  get '/view_pet_status/:pet_id', to: 'pet_dashboard#view_pet_status'

  # Bonus FunPart: Virtual Pet Parade
  get '/virtual_pet_parade/:no_pets', to: 'bonus#virtual_pet_parade'

  # Bonus HardChallenge: Pet Breeding
  post '/breed_pets/:parent1_id/:parent2_id', to: 'bonus#breed_pets'

end
