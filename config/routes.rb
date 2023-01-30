Rails.application.routes.draw do
  root 'questions#index'
  resources :questions do
    collection do
      get :chapters
      get :lists
    end
  end
end
