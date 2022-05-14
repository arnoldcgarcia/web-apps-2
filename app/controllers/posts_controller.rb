class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new 
    @post = Post.new
  end

  def create 
    Post.create(author: params["post"]["author"], body: params["post"]["body"], image: params["post"]["image"])
    redirect_to "/posts"
  end

end
