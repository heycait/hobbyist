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
    text = @hobby.name.gsub(/ /, '')

    category = Category.where(id: @hobby.category_id).first.meetup_id
    response = HTTParty.get(
          "https://api.meetup.com/2/open_events?&sign=true&photo-host=public&lat=37.7841336&lon=-122.3957437&text=#{text}&category=#{category}&page=3&key=2818c11ba3357336e7b4c19552049"
        )
    @meetups = response['results']
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
