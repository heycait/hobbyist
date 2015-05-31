class HobbiesController < ApplicationController
  before_action :find_hobby, only: [:show, :edit, :update, :destroy, :like, :unlike]

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
    result = request.location
    lat = result.latitude
    long = result.longitude
    text = @hobby.name.gsub(/ /, '%20').downcase

    category = Category.where(id: @hobby.category_id).first.meetup_id
    response = HTTParty.get(
          "https://api.meetup.com/2/open_events?&sign=true&photo-host=public&lat=#{lat}&lon=#{long}&text=#{text}&time=-0,3m&page=3&key=2818c11ba3357336e7b4c19552049"
        )
    @meetups = response['results']
    @questions = @hobby.questions
  end

  def update
    @hobby.update_attributes(hobby_params)
  end

  def destroy
    @hobby.destroy
  end

  def like
    if current_user.hobbies.include?(@hobby)
      current_user.hobbies.delete(@hobby)
      render json: current_user.hobbies
    else
      current_user.hobbies << @hobby
      render json: current_user.hobbies
    end
  end

  private
  def hobby_params
    params.require(:hobby).permit(:name, :description, :image_url)
  end

  def find_hobby
    @hobby = Hobby.find(params[:id])
  end

end
