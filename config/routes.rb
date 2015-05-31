Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'api/v1/courses' => 'courses#index'
  get 'api/v1/chapters' => 'sections#getchapters'
  get 'api/v1/sections' => 'sections#getsections'
  get 'api/v1/getvideourl' => 'sections#getvideourl'

  get 'api/v1/authors' => 'courses#index'
  get 'api/v1/shipin/latest' => 'sections#index'
  get 'api/v1/getvideourl' => 'sections#getvideourl'

end
