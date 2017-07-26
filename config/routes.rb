Rails.application.routes.draw do
  root 'home#index'
  get "home/about", as: "about"
  get "home/contact", as: "contact"
  get "home/embed", as: "embed"
end
