class MenusController < ApplicationController

  def index
  end
  
  def new
    @menu = Menu.new
  end
  


  private

  def menu_params
    params.require(:menu).permit(:main_name, :main_recipe, :main_genre, :salad_name, :salad_recipe, :salad_genre, :soup_name, :soup_recipe, :soup_genre)
  end
