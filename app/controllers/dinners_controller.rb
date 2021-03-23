class DinnersController < ApplicationController
  def index
    @random = Menu.order("RAND()").limit(1)

  end

  private

  def dinner_params
    params.require(:dinner).permit(:image, :impression, :cookday, :cooktime)
  end

end


