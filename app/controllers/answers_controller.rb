class AnswersController < ApplicationController
  before_action :find_answer, only: [:edit, :show, :destroy, :vote]
  before_action :authenticate_user_from_token!, only: [:edit, :destroy]

  def index
    answer = Answer.order('created_at DESC').all
  end

  def new
    answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.save
    return render partial: 'answer', layout: false, locals: {answer: @answer}
  end

  def edit
  end

  def show
  end

  def update
    answer = Answer.update_attributes(answer_params)
  end

  def destroy
    if @answer
      if compare_user?
        @answer.destroy
      else
        render json: {errors: 'Unauthorized request'}, status: 401
      end
    else
      render json: {errors: 'Bad Request'}, status: 400
    end
  end

  def vote
    user = current_user
    @vote = Vote.where(user_id: user.id, answer_id: @answer.id).first

    if @vote
      if params[:vote] == 'upvote'
        @answer.vote_count += 1 if @vote.count < 1
        @vote.count += 1 if @vote.count < 1
        @vote.save
      elsif params[:vote] == 'downvote'
        @answer.vote_count -= 1 if @vote.count > -1
        @vote.count -= 1 if @vote.count > -1
        @vote.save
      end
    else
      if params[:vote] == 'upvote'
        Vote.create(user_id: user.id, answer_id: @answer.id, count: 1)
        @answer.vote_count += 1
      elsif params[:vote] == 'downvote'
        Vote.create(user_id: user.id, answer_id: @answer.id, count: -1)
        @answer.vote_count -= 1
      end
    end

    if @answer.save
      render json: @answer.vote_count
    else
      render json: 'fu', status: 400
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:body, :question_id, :user_id)
  end

  def find_answer
    @answer = Answer.find(params[:id])
  end

end
