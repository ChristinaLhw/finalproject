class ItemsController < ApplicationController 

  def index
  
    matching_items = Item.all
    @list_of_items=matching_items.order({:created_at=>:desc})
    
  render({:template=>"item_templates/index.html.erb"})

  end
  
  end