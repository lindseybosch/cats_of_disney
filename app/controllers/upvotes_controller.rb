class UpvotesController < ApplicationController

  def update
    upvote = Upvote.new
    upvote.user = current_user
    image = Image.find(params[:id])
    upvote.image = image
    upvote.save
    redirect_to root_path
  end

end
