Rails.application.routes.draw do
  #HOME
  get("/", {:controller=>"users", :action=>"home"})

  #USERS

  get("/users", {:controller=>"users", :action=>"index"})

  get("/users/:path_username", {:controller=>"users", :action=>"show"})

  get("/user_sign_up", {:controller=>"users", :action=>"new_registration_form"})

  get("/user_sign_out", {:controller=>"users", :action=>"toast_cookies"})

  get("/user_sign_in", {:controller=>"users", :action=>"sign_in_form"})

  post("/verify_credentials", {:controller=>"users", :action=>"authenticate"})

  get("/insert_user_record", {:controller=>"users", :action=>"create"})

  get("/users/my_items", {:controller=>"users", :action=>"my_items"})


  #ITEMS

  get("/items", {:controller=>"items", :action=>"index"})

  get("/items/:path_item_id", {:controller=>"items", :action=>"show"})

  get("/delete_item/:toast_id", {:controller=>"items", :action=>"bye"})

  get("/update_item/:the_item_id", { :controller => "items", :action => "update" })

  get("/insert_item_record", {:controller=> "items", :action => "create"})
end
