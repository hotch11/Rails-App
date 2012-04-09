ActionController::Routing::Routes.draw do |map|

  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  map.login 'login', :controller => 'sessions', :action => 'new'
  map.accessibility 'accessibility', :controller => 'assignment2s', :action => 'accessibility'
  map.sitemap 'sitemap', :controller => 'assignment2s', :action => 'sitemap'
  map.index 'index', :controller => 'assignment2s', :action => 'index'
  map.new 'new', :controller => 'assignment2s', :action => 'new'
  map.asd 'usernametaken', :controller => 'users', :action => 'usernametaken'

  map.resources :sessions
  map.resources :usernametaken


  map.resources :users

  map.resources :assignment2s

 map.root :controller => "assignment2s"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
