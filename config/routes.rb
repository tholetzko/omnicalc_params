Rails.application.routes.draw do

# PART I
# Square

get("/flexible/square/:number",                 { :controller => "calculations", :action => "square" })

# Square root
get("/flexible/square_root/:number",                 { :controller => "calculations", :action => "square_root" })

# Present value
get("/flexible/payment/:basis_points/:number_of_years/:present_value",                 { :controller => "calculations", :action => "present_value" })

# MinMax
get("/flexible/random/:min/:max",                 { :controller => "calculations", :action => "min_max" })


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
