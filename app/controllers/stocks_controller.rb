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
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stock_params
      params.require(:stock).permit(:title, :image)
    end
  
  
  #def stock_params
    #params.require(:stock).permit(:id, :stock_id, :user_id, :content, :image)
    #params.require(:stock).permit(:content, :image)
  #end
end

  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to article_url(@article), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :image)
    end