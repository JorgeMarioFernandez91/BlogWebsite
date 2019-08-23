#in this class is where we will define methodes
#that will become the actions for this controller
#these actions are the CRUD operations
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
		@article = Article.new(article_params)

		#if at least 5 chars in article
		if @article.save
			redirect_to @article
		else #otherwise tell user to make new article
			#render will reuse the same request as before, if we had used redirect_to then the browser would issue another request
			render 'new'
		end
	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
