class ItemsController < ApplicationController 

  def home
    matching_items = Item.all
    @list_of_items=matching_items.order({:created_at=>:desc})
    
  render({:template=>"item_templates/index.html.erb"})

  end

  def index
  
    matching_items = Item.all
    @list_of_items=matching_items.order({:created_at=>:desc})
    
  render({:template=>"item_templates/index.html.erb"})

  end

  def show
    url_id=params.fetch("path_item_id")
    matching_items=Item.where({:id=> url_id})
    @the_item=matching_items.at(0)
     render({:template=>"/item_templates/show.html.erb"}) 
  end

  def bye
    the_id=params.fetch("toast_id")
    matching_item=Item.where({:id=> the_id})
    the_item=matching_item.at(0)
    the_item.destroy
    
    redirect_to("/items")

  end

  def update

    id = params.fetch("the_item_id")
    item = Item.where({ :id => id }).at(0)
    item.photo_url = params.fetch("query_image")
    item.name = params.fetch("query_name")
    item.quantity = params.fetch("query_quantity")
   #item.user_id = params.fetch("query_user_id")
    item.user_id = session.fetch(:user_id)
    item.save

    redirect_to("/items/#{item.id}")

  end

  def create
    #new_user_id = params.fetch("input_owner_id")
    #Line below is new and gets user_id from cookie
    #user_id = session.fetch(:user_id)
     #item.user_id = params.fetch("input_owner_id")
    item = Item.new
   
    item.user_id = session.fetch(:user_id)
    item.photo_url = params.fetch("input_image")
    item.quantity = params.fetch("input_quantity")
    item.name = params.fetch("input_name")
    item.save

    #if save_status==true

    redirect_to("/items/"+item.id.to_s)

  #else
  #  redirect_to("/items", {:alert=> user.errors.full_messages.to_sentence})
  #end
  end

  end
