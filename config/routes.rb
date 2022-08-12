Rails.application.routes.draw do
  #jurors index
  get "/jurors" => "jurors#index"
  #users index
  get "/users" => "users#index"
end
