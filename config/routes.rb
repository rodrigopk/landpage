Rails.application.routes.draw do
  scope '/api' do
    resources :skills
    resources :experiences
    resources :developers, only: [:show]
  end
end
