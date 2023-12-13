class StocksController < ApplicationController
  def index
    @stocks = Stock.all
    # @stock = Stock.new
  end

  def new
    @stock = Stock.new
  end
  
  def create
    logger.debug params[:stock][:content]
    @stock = Stock.create params.require(:stock).permit(:content, :image) # POINT
    redirect_to @stock
    #@stock = Stock.create params.require(:stock).permit(:content)
    #if image = params[:stock][:image]
      #@stock.image.attach(image)
    #end
  end
  
  def show
    @stock = Stock.find(params[:id])
  end
  
  def edit
    @stock = Stock.find(params[:id])
  end

  def destroy
    Stock.find(params[:id]).destroy
    redirect_to stocks_path
  end
  
  def stock_params
    params.require(:stock).permit(:id, :stock_id, :user_id, :content, :image)
    #params.require(:stock).permit(:content, :image)
  end
end