RestfulAuthPractice::Application.routes.draw do |map|
  map.home '', :controller => 'home', :action => 'index'

  map.resources :users
  map.resource  :session
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.login  '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
end

  