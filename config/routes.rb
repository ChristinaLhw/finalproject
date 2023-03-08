Rails.application.routes.draw do

  get("/users", {:controller=>"users", :action=>"index"})

  get("/users/:path_username", {:controller=>"users", :action=>"show"})

  get("/items", {:controller=>"items", :action=>"index"})
end
