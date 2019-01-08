Rails.application.routes.draw do
  get 'proxy/input'
  get 'proxy/output'
  root to: 'proxy#input'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
