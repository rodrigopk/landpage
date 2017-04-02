Rails.application.routes.draw do
  scope '/api' do
    resources :experiences
    resources :developers, only: [:show]
  end
end
