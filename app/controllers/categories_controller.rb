class CategoriesController < ApplicationController

  def index
    if user_signed_in?
      @categories = Category.order(name: :asc)
    else
      redirect_to new_user_registration_path
    end
  end

  def show
    @category = Category.where(id: params[:id]).first
    @hobbies = @category.hobbies
    @hobby = Hobby.new
    @categories = Category.order(name: :asc)
  end

end
