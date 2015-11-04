class ImagesController < ApplicationController

def index
  @images = Image.all
end

def new
  @image = Image.new
end

def show
  # @image = Image.find(params[:id])
end

def update
    image = Image.find(params["id"])
    redirect_to images_path(random: true)
  end

def upvote
  upvote = Upvote.new
  upvote.user = current_user
  image = Image.find(params[:id])
  upvote.image = image
  upvote.save
  redirect_to image_path
end

def create
  image = Image.new(image_params)
  image.user = current_user
  if image.save
    flash[:notice] = "you posted a image good for you "
    redirect_to root_path
  else
    render 'new'
  end
end

def destroy
  @image = current_user.images.find(params[:id])
  @image.destroy
  redirect_to user_path(current_user)
end

def image_params
  params.require(:image).permit(:description, :image, :image_img)
end
end
