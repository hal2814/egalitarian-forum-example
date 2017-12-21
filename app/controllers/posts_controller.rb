class PostsController < ApplicationController

  def index
    @posts = Post.all()
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
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

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    redirect_to posts_path
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :content,)
    end
end
