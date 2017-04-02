Rails.application.routes.draw do
  resources :skills
  scope '/api' do
    resources :experiences
    resources :developers, only: [:show]
  end
end
