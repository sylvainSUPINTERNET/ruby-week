class PostController < ApplicationController
  def show
  	@posts = Post.order('created_at DESC')




      # tendances

    @trands = Post.order('like DESC').limit(3)

  end

  def edit
  end

  def delete
  end

  def create    
  	  Post.create title: params[:title], body: params[:body], hashtag: params[:hashtag], user: current_user.name, like: 0
 	  redirect_to "/post_show"
  end

  def like
    @postToLike = Post.find(params[:id_post])

    @likeCount = @postToLike.like 

    if @likeCount == nil 
      @likeCount = 0
    end

    @finalLike = @likeCount + 1
  
    @postToLike.update_attribute(:like, @finalLike)

  redirect_to "/post_show"
  end


end
