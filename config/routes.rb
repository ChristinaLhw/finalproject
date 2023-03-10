Rails.application.routes.draw do
  get("/", {:controller=>"items", :action=>"home"})

  get("/users", {:controller=>"users", :action=>"index"})

  get("/users/:path_username", {:controller=>"users", :action=>"show"})

  get("/user_sign_up", {:controller=>"users", :action=>"create"})

  get("/items", {:controller=>"items", :action=>"index"})

  get("/items/:path_item_id", {:controller=>"items", :action=>"show"})

  get("/delete_item/:toast_id", {:controller=>"items", :action=>"bye"})

  get("/update_item/:the_item_id", { :controller => "items", :action => "update" })

  get("/insert_item_record", {:controller=> "items", :action => "create"})
end
