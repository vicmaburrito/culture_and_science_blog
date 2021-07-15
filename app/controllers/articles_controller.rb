class ArticlesController < ApplicationController
    def index
        @articles = Article.all
      end
    
      def new
        @article = Article.new
      end
    
      def create
        @article = Article.new(user_params)
    
        if @article.save
          redirect_to root_path
        else
          render :new
        end
      end
    
      def edit
        @article = Article.find(params[:id])
      end
    
      def update
        @article = Article.find(params[:id])
    
        if @article.update(user_params)
          redirect_to root_path
        else
          render :edit
        end
      end
  
    def logout
      @article = Article.find(params[:id])
       @article.destroy
       redirect_to root_path
    end
      private
    
      def user_params
        params.require(:article).permit(:title, :text, :image)
      end
    end