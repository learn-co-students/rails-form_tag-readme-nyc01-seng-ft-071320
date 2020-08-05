class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.create(title: params[:post][:title], description: params[:post][:description])
    params.require(:post).permit(:title, :description)
    redirect_to posts_path
    
    # @post = Post.new(post_params(:title, :description))
    # @post.save
    # redirect_to posts_path(@posts)
  end

  # private
  # def post_params(*args)
  #   params.require(:post).permit(*args)
  # end
  
end
