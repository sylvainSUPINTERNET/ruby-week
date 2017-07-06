class UserController < ApplicationController
  def profile
  	@nameUserToSearch = params[:username]

  	@userProfile = User.where(:name => @nameUserToSearch)


  	 @trands = Post.order('like DESC').limit(3)
  end
end
