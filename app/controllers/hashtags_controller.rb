class HashtagsController < ApplicationController
  def show
  	@paramHashtag = params[:hashtag]
  	@hashtags = Post.where(:hashtag => @paramHashtag).to_a

  end

 
end
