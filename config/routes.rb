Rails.application.routes.draw do
root 'quiz#index'
resources :episodes
end
