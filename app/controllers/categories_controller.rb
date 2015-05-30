class CategoriesController < ApplicationController
  def index
    if user_signed_in?
      @categories = Category.order(name: :asc)
    else
      redirect_to new_user_registration_path
    end
  end

  def show
    @category = Category.find(params[:id])
    @hobbies = @category.hobbies
  end
end
