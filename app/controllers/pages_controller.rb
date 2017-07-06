class PagesController < ApplicationController
  def index
  	@test = "message test";

  	    @trands = Post.order('like DESC').limit(3)

  end
end
