class PostController < ApplicationController
  def show
  	@posts = Post.all
  end

  def edit
  end

  def delete
  end

  def create
  	  Post.create title: params[:title], body: params[:body]
 	  redirect_to "/post_show"
  end
end
