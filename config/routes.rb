AngularCasts::Application.routes.draw do
  root to: "home#index"

  namespace :api do
    resources :episodes, only: [:index, :show], defaults: {format: :json}
  end
end
