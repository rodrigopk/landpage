Rails.application.routes.draw do
  scope '/api' do
    resources :developers
  end
end
