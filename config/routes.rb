Rails.application.routes.draw do

  get("/word_count/results",             { :controller => "calculations", :action => "word_count" })

get("/flexible/square/:number",                 { :controller => "calculations", :action => "square" })


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
