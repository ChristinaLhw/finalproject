class ItemsController < ApplicationController 

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
  
  end
