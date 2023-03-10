Rails.application.routes.draw do
  #get("/", {:controller=>"items", :action=>"home"})

  get("/users", {:controller=>"users", :action=>"index"})

  get("/users/:path_username", {:controller=>"users", :action=>"show"})

  get("/items", {:controller=>"items", :action=>"index"})

  get("/items/:path_item_id", {:controller=>"items", :action=>"show"})
end
