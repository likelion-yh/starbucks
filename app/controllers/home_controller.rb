class HomeController < ApplicationController
  def index  
  end

  def write
    post = Post.new
    post.title_db = params[:title]
    post.content_db = params[:content]
    post.save
 	
    redirect_to "/home/list"
  end

  def list
     @print = Post.all
  end

  def destroy
    @post = Post.find(params[:my_id])
    @post.destroy
 
    redirect_to "/home/list"
end

  def update_view
    @post = Post.find(params[:my_id])
  end

  def update_real
    @post = Post.find(params[:my_id])
    @post.title_db = params[:title]
    @post.content_db = params[:content]
    @post.save
  
    redirect_to "/home/list"
  end
end
