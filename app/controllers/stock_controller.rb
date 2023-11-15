class StockController < ApplicationController
  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)  #def create 修正必要
    if @stock.save
      redirect_to stocks_path
    else
      render 'new'
    end

  end

  def destroy
    Stock.find(params[:id]).destroy
    redirect_to stocks_path
  end
end
