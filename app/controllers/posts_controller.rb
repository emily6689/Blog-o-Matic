class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
    if params[:id]
      @post = Post.find(params[:id])
    else
      @post = Post.last
    end
  end

  def show
    @posts = Post.all
    if params[:id]
      @post = Post.find(params[:id])
    else
      @post = Post.last
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to action: :index
      flash[:notice] = "Post created!"
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to action: :index
      flash[:notice] = "Post successfully edited."
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to action: :index
    flash[:notice] = "Post deleted."
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :image, :user_id)
  end
end

