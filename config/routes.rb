Rails.application.routes.draw do
  # users index
  get "/users" => "users#index"
  # jurors index
  get "/jurors" => "jurors#index"
  # jurors show
  get "/jurors/:id" => "jurors#show"
  # jurors destroy
  delete "/jurors/:id" => "jurors#destroy"
  # jurors update
  patch "/jurors/:id" => "jurors#update"
end
