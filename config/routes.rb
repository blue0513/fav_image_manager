Rails.application.routes.draw do
  root "fav_images#index"
  get  "fav_images/new"
  post "fav_images/create"
end
