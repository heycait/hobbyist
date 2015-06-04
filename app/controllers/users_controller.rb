class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit]

  def show
  end

  def edit
  end

  private

  def find_user
    @user = User.where(id: params[:id]).first
    @categories = []

    @user.hobbies.each do |hobby|
      @categories << hobby.category
    end

    @categories.uniq!
  end

end
