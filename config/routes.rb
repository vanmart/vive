Rails.application.routes.draw do

  root to: "basic_pages#welcome"

  get 'basic_pages/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
