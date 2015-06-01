class HobbiesController < ApplicationController
  before_action :find_hobby, only: [:show, :edit, :update, :destroy, :follow]

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
    lat = request.location.latitude
    long = request.location.longitude
    text = @hobby.name.gsub(/ /, '%20').downcase

    category = Category.where(id: @hobby.category_id).first.meetup_id
    response = HTTParty.get(
          "https://api.meetup.com/2/open_events?&sign=true&photo-host=public&lat=#{lat}&lon=#{long}&text=#{text}&time=-0,3m&page=3&key=2818c11ba3357336e7b4c19552049"
        )
    @meetups = response['results']
    @questions = @hobby.questions
  end

  def update
    imgur_client = Imgur.new('891321eba378312')
    image_path = params[:hobby][:image_url].tempfile.path
    image = Imgur::LocalImage.new(image_path)
    imgur_url = imgur_client.upload(image).link
    @hobby.update_attribute(:image_url, imgur_url)
    # Template error if I don't specify redirect
    redirect_to(:back)
  end

  def destroy
    @hobby.destroy
  end

  def follow
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
