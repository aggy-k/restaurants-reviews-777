Rails.application.routes.draw do
  resources :restaurants do
    # resources :reviews, only: [:new, :create]
    resources :reviews, shallow: true

    # collection
    collection do
      get 'top'
    end

    # member
    member do
      get 'upvote'
      # get 'publish'
    end
  end

  # resources :reviews, only: [:destroy]
end
