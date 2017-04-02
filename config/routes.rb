Rails.application.routes.draw do
  scope '/api' do
    resources :interests
    resources :skills
    resources :experiences
    resources :developers, only: [:show]
  end
end
