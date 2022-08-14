Rails.application.routes.draw do
  root "images#index"
  get 'images/index'
end
