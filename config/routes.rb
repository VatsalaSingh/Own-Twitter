Rails.application.routes.draw do
  get '/' => 'home#index'

  get '/signin' => 'authentication_controller#signin_get'

  get '/signup' => 'authentication_controller#signup_get'

  post '/signin' => 'authentication_controller#signin'

  post '/signup' => 'authentication_controller#signup'

  get '/logout'=> 'authentication_controller#logout'

  post '/create_tweet'=>'home#create_tweet'

  post '/like'=> 'home#like'

  post '/follow' => 'home#follow'


  get '/users' => 'home#users'
  get '/followers' => 'home#followers'
  get '/followees' => 'home#followees'
end
