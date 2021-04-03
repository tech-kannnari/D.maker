class DinnersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :show]

  def index
    @random = Menu.order("RAND()").limit(1)
  end

  def create
    @random = Menu.order("RAND()").limit(1)
    @dinner = Dinner.new(dinner_params)
    if @dinner.save
      
      redirect_to root_path
    else
      render :index
    end
  end

  def new
    @dinner = Dinner.all.order('created_at DESC')
  end

  def show
    @dinner = Dinner.find(params[:id])
  end
  
  private

  def dinner_params
    params.permit(:image, :impression, :cookday)
  end

end


