Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'flats/search', to: 'flats#search', as: "search_flats"
  # get 'flats/search', to: 'flats#display_results'
  resources :flats
end
