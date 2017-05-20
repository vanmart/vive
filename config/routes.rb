Rails.application.routes.draw do

  devise_for :users
  root to: "basic_pages#welcome"

  get 'basic_pages/welcome'
  get 'basic_pages/page1'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
