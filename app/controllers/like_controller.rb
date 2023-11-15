class LikeController < ApplicationController
  def create
    stock = Stock.find(params[:stock_id])
    unless stock.liked?(current_user)
      stock.like(current_user)
    end
    redirect_to root_path
  end

  def destroy
    stock = Stock.find(params[:id])
    if stock.liked?(current_user)
      stock.unlike(current_user)
    end
    redirect_to root_path
  end
end
