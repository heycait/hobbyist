class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @categories = []
    @user.hobbies.each do |hobby|
      @categories << hobby.category
    end
    @categories.uniq!


  end
end
