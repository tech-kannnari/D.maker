class MenusController < ApplicationController

  def index
  end
  
  def new
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render:new
    end
  end


  private

  def menu_params
    params.require(:menu).permit(:main_name, :main_recipe, :main_genre, :salad_name, :salad_recipe, :salad_genre, :soup_name, :soup_recipe, :soup_genre)
  end
