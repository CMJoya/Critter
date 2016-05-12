class PagesController < ApplicationController

  def index
  end

  def home
    @posts = Post.all
    @newPost = Post.new
  end

  def profile
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newPost = Post.new
    @toFollow = User.all.last(5)

    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice => "User Not Found!"
    end
  end

  def explore
    @posts = Post.all
  end
end
