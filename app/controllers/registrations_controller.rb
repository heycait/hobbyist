class RegistrationsController < Devise::RegistrationsController
  require 'imgur'

  private

  def sign_up_params
    if params[:user][:image_path]
      imgur_client = Imgur.new('891321eba378312')
      image_path = params[:user][:image_url].tempfile.path
      image = Imgur::LocalImage.new(image_path)
      imgur_url = imgur_client.upload(image).link
      params[:user][:image_url] = imgur_url
    end

    params.require(:user).permit(:username, :email, :password, :password_confirmation, :image_url)
  end

  def account_update_params
    if params[:user][:image_path]
      imgur_client = Imgur.new('891321eba378312')
      image_path = params[:user][:image_url].tempfile.path
      image = Imgur::LocalImage.new(image_path)
      imgur_url = imgur_client.upload(image).link
      params[:user][:image_url] = imgur_url
    end

    params.require(:user).permit(:username, :email, :password, :password_confirmation, :image_url, :current_password)
  end

end
