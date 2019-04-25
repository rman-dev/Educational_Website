Rails.application.routes.draw do
  get 'home/index'
  get 'conquest/income'
  get 'conquest/asset'
  get 'conquest/liability'
  get 'conquest/equity'
  get 'conquest/credit'
  post 'conquest/get_data'
  post 'conquest/save_state'
  get 'conquest/result'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
