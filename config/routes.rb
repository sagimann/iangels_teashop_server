Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tea/:id' => 'tea#get'
  get 'teas' => 'tea#all'
  get 'teas/featured' => 'tea#featured'
end
