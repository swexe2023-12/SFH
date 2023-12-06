class StocksController < ApplicationController
  
  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
  end
  
  
  def create
    @stock = Stock.new(room_params.merge(user_id: current_user.id))
    if @stock.save
      flash[:notice] = "ルームを登録しました"
      redirect_to :stocks_path
    end
  end
  
  
  def show
    @stock = Stock.find(params[:id])
  end

  #def create
   # @stock = Stock.new(stock_params)  #def create 修正必要
    #if @stock.save
     # redirect_to stocks_path
    #else
     # render 'new'
    #end
  #end
  
  def edit
    @stock = Stock.find(params[:id])
  end

  def destroy
    Stock.find(params[:id]).destroy
    redirect_to stocks_path
  end
  
  private

  def stock_params
    params.require(:stock).permit(:stock_name, :stock_introduction, :usage_fee, :address, :image)
  end
end