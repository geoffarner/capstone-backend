Rails.application.routes.draw do
  ### Users ###

  # users index
  get "/users" => "users#index"
  # user create
  post "/users" => "users#create"

  ### Jurors ###

  # jurors index
  get "/jurors" => "jurors#index"
  # jurors show
  get "/jurors/:id" => "jurors#show"
  # jurors destroy
  delete "/jurors/:id" => "jurors#destroy"
  # jurors update
  patch "/jurors/:id" => "jurors#update"
  # juror create
  post "/jurors" => "jurors#create"
end
