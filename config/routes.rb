Rails.application.routes.draw do
<<<<<<< af3850debda1368bb57e6d1dfbac5b808da6204b
  get "users/new"
=======
>>>>>>> Finish static pages

  root "static_pages#home"

  get "/help", to: "static_pages#help"
<<<<<<< af3850debda1368bb57e6d1dfbac5b808da6204b

  get "/about", to: "static_pages#about"

  get "/contact", to: "static_pages#contact"

  get "/signup", to: "users#new"
=======

  get "/about", to: "static_pages#about"

  get "/contact", to: "static_pages#contact"

>>>>>>> Finish static pages
end
