class ImagesController < ApplicationController
    def update
        # params[:avatar] contains a ActionDispatch::Http::UploadedFile object
        Current.recipe.image.attach(params.require(:image))
        redirect_to Current.recipe
      end
end
