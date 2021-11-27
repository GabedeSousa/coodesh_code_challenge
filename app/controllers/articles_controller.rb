class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update]

  def index
    @articles = Article.all
    render json: @articles
  end

  def show

  end

  def create
    @article = Article.new 
    @article.attributes = article_params
    save_article!
  end

  def update
    @article.attributes = article_params
    save_article!
  end

  def destroy
    @article.destroy!
    rescue
      render_error(fields: @article.errors.messages)
    end

  private

  def article_params
    return {} unless params.has_key?(:article)
    params.require(:article).permit(:featured, :title, :url, :imageUrl, :newsSite, :summary, :publishedAt, :launches, :events)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def save_article!
    @article.save!
    render :show
  rescue
    render_error(fields: @article.errors.messages)
  end

end
