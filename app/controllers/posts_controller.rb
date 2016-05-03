class PostsController < ApplicationController

  def index
  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

      if @post.save
        redirect_to "", notice: "Post was successfully created!"
      else
        render :new, notice: "Error: Post Not Saved!"
    end
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :content)
  end




end
