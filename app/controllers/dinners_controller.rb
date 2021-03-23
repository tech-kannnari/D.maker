class DinnersController < ApplicationController
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

  private

  def dinner_params
    params.permit(:image, :impression)
  end

end


