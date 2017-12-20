class PostsController < ApplicationController

  def index
    @posts = Post.all()
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Product.new(post_params)
    if @post.save
      flash[:notice] = "Post Created!"
      redirect_to '/'
    else
      render :new
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :content,)
    end
end
