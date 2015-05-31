class QuestionsController < ApplicationController
  before_action :find_question, only: [:edit, :show, :destroy, :question]

  def index
    questions = Question.order('created_at DESC').all

  end

  def create
    question = Question.new(question_params)
    question.hobby_id = params[:hobby_id]
    # question.user_id = something
    question.save
    render json: question
  end

  def new
    question = Question.new
    render json: question
  end

  def edit
    if compare_user?
      render json: @question
    else
      render json: {errors: 'Unauthorized request'}, status: 401
    end
  end

  def show
    answers = @question.answers.order('created_at DESC').all
  end

  def update
    @question.update_attributes(question_params)
  end

  def destroy
    if @question
      if compare_user?
        @question.destroy
      else
        render json: {errors: 'Unauthorized request'}, status: 401
      end
    else
      render json: {errors: 'Bad Request'}, status: 400
    end
  end

  def vote
    if params[:vote] == 'upvote'
      @question.vote_count += 1
    elsif params[:vote] == 'downvote'
      @question.vote_count -= 1
    end
    if @question.save
      if request.xhr?
        render json: @question.vote_count
      else
        redirect_to root_path
      end
    else
      render json: 'fu', status: 400
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :body)
  end

  def find_question
    @question = Question.where(id: params[:id]).first
  end

end
