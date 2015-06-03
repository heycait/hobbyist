class HobbiesController < ApplicationController
  require 'imgur'
  before_action :find_hobby, only: [:show, :edit, :update, :destroy, :follow, :followers]
  before_action :category_collection, only: [:new, :create]

  def index
    @hobbies = Hobby.order(name: :asc)
  end

  def create
    @hobby = Hobby.new(hobby_params)
    # @hobby.creator_id = current_user.id
    binding.pry
    if @hobby.save
      # imgur_client = Imgur.new('891321eba378312')
      imgur_client = Imgur.new(ENV['IMGUR'])
      image_path = hobby_params[:image_url].tempfile.path
      image = Imgur::LocalImage.new(image_path)
      imgur_url = imgur_client.upload(image).link

      @hobby.image_url = imgur_url
      @hobby.save
      @question = Question.new
      redirect_to hobby_path(@hobby.id)
      # return render partial: 'hobby', layout: false, locals: { hobby: @hobby }
    else
      render "show"
    end
  end

  def new
    @hobby = Hobby.new
    @categories = Category.order(name: :asc)
  end

  def edit
  end

  def show
    # lat = request.location.latitude
    # long = request.location.longitude
    lat = 37.784710
    long = -122.397664

    text = @hobby.name.gsub(/ /, '%20').downcase
    37.784710, -122.397664
    category = Category.where(id: @hobby.category_id).first.meetup_id
    response = HTTParty.get(
          "https://api.meetup.com/2/open_events?&sign=true&photo-host=public&lat=#{lat}&lon=#{long}&text=#{text}&time=-0,3m&page=3&key=2818c11ba3357336e7b4c19552049"
        )
    @meetups = response['results']
    @questions = @hobby.questions
    @answer = Answer.new
    @question = Question.new
  end

  def update
    # imgur_client = Imgur.new('891321eba378312')
    imgur_client = Imgur.new(ENV['IMGUR'])
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
    else
      current_user.hobbies << @hobby
    end
    render json: @hobby.users.count
  end

  def followers
    return render partial: 'followers', layout: false, locals: { followers: @hobby.users }
  end

  private
  def hobby_params
    params.require(:hobby).permit(:name, :description, :image_url, :creator_id, :category_id)
  end

  def find_hobby
    @hobby = Hobby.find(params[:id])
  end

  def category_collection
    @category = Category.all.sample
    @categories = Category.order(name: :asc)
  end
end
