class HashtagsController < ApplicationController
  def show
  	@paramHashtag = params[:hashtag]
  	@hashtags = Post.where(:hashtag => @paramHashtag).to_a

  end

 # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end
end
