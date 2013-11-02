ColetaSeletiva::Application.routes.draw do
  devise_for :users

  namespace :admin do
    get "dashboard" => "dashboard#index"

    get "counties", controller: "counties", action: "index"
  end
end
