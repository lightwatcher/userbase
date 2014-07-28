Rails.application.routes.draw do
  get '/userpage/:id' => 'application#show'
  get '/new' => 'application#new'
  get '/create' => 'application#create'
end
