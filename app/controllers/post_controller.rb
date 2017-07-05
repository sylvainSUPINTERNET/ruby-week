class PostController < ApplicationController
  def show
  	@posts = Post.all
  end

  def edit
  end

  def delete
  end

  def create
      #AJOUTER user courrant au poste pour pouvoir faire un lien vers son profile et le follow 
      #AJOUTER un system de like AJOUTER UN COMPTEUR DANS LA BASE DU POST (i++) sur un listenenr (REF doc pour ajouter un champ) avec migrate
      #RENDRE VISIBLE LES DATES + NOM de l'utilisateur sur le poste
      #SUPPRESSION EDITION DELETE # et POST
      # AJOUTER BOOTSTRAP ans le layout
      # REVOIR UN PEU LE STYLE
  	  Post.create title: params[:title], body: params[:body], hashtag: params[:hashtag]
 	  redirect_to "/post_show"
  end


 def current_user
     @current_user ||= User.find_by(id: session[:user_id])
  end



end
