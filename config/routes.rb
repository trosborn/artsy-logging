Rails.application.routes.draw do
  root :to => 'artists#new'

  get 'artists/index'
end
