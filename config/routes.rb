Rails.application.routes.draw do
  root "fav_images#index"
  get  "fav_images/new"
  post "fav_images/create"
  delete "fav_images/delete/:id" => "fav_images#destroy"
  get "fav_images/edit/:id" => "fav_images#edit"
  patch "fav_images/edit/:id" => "fav_images#update"
end
