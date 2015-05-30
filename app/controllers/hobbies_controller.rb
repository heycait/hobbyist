class HobbiesController < ApplicationController
  before_action :find_hobby, only: [:show, :edit, :update, :destroy]

  def index
    @hobbies = Hobby.order(name: :asc)
  end

  def create
    @hobby = Hobby.new(hobby_params)
    @hobby.category_id = params[:category_id]
    @hobby.save
  end

  def new
    @hobby = Hobby.new
  end

  def edit
  end

  def show
  end

  def update
    @hobby.update_attributes(hobby_params)
  end

  def destroy
    @hobby.destroy
  end

  private
  def hobby_params
    params.require(:hobby).permit(:name, :description, :image_url)
  end

  def find_hobby
    @hobby = Hobby.find(params[:id])
  end

end
