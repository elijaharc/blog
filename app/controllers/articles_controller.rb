class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :author, :body))
    
    if @article.save
      flash[:notice] = "Article was successfully created."
      redirect_to article_path(@article)
    else
      render 'new'
    end

  end

  # finding the right article to edit 
  def edit 
    @article = Article.find(params[:id])
  end 

  # will impact the article
  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :author, :body))
      flash[:notice] = "Article was successfully updated."
      redirect_to article_path(@article)
    else
      render 'edit'
    end

  end

  def destroy
  end
end
