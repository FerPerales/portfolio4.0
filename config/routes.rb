Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'
  post '/contacts', to: 'contacts#create'
end
