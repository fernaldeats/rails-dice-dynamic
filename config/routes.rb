Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "user_home"})
  get("/dice/2/6", { :controller => "dice", :action => "user_two_six"})
  get("/dice/2/10", { :controller => "dice", :action => "user_two_ten"})
  get("/dice/1/20", { :controller => "dice", :action => "user_one_twenty"})
  get("/dice/5/4", { :controller => "dice", :action => "user_five_four"})
  get("/dice/:no_of_dice/:no_of_sides", { :controller => "dice", :action => "user_flexible"})
end
