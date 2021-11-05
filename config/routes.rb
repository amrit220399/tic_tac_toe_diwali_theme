Rails.application.routes.draw do
  get 'game/play'
  post 'game/index'
  root  'game#play'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
