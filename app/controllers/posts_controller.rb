class PostsController < ApplicationController
  #Ideally, we need to have a create method, this method should do a SPAM check.
  def index
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
