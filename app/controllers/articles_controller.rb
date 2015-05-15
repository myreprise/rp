class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.find(params[:id])
		if @article.save
	  		redirect_to(:action => 'index')
	  	else
	  		render ('new')
	  	end
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update_attributes(article_params)
			redirect_to(:action => 'show', :id => @article.id)
		else
		  	render('index')
		end
	end

	private
    def article_params
      params.require(:article).permit(:title, :content, :publication_date, :publication)
    end
end