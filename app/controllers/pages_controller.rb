class PagesController < ApplicationController

  def home
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
    @articles = Article.all
  end
end
