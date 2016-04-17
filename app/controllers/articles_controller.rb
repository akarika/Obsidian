class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:destroy, :edit, :update, :create, :new]
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.all
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def new
    @article = Article.new
    @h2_form="NEW"
  end

  def edit
    @article = Article.find(params[:id])
    @h2_form="UPDATE"
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
      flash[:notice]="Article Update"
    else
      render 'edit'
    end
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
