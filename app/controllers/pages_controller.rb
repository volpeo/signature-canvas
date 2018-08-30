class PagesController < ApplicationController

  def home
  end

  def accept
    @response = Cloudinary::Uploader.upload(params.dig(:signature, :content))

    @image_id = @response['public_id']
  end
end
