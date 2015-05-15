class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		@articles = Article.new
	end

	def create
		@article = Article.find(params[:id])
	end

	def show

	end

	private



end
