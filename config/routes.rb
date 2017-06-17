Rails.application.routes.draw do
  resources :educations
  scope '/api' do
    resources :interests
    resources :skills
    resources :experiences
    resources :developers, only: [:show]
  end
end
