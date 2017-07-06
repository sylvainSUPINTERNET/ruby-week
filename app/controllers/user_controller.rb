class UserController < ApplicationController
  def profile
  	@idUserToSearch = params[:id]

  	@userProfile = User.find(@idUserToSearch)


  	 @trands = Post.order('like DESC').limit(3)
  end
end
