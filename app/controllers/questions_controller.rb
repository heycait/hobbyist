class QuestionsController < ApplicationController
  before_action :find_question, only: [:vote]
  before_action :questions_by_hobby, only: [:search, :sort]
  before_action :new_answer, only: [:create, :search, :sort]

  def create
    @question = Question.new(question_params)
    @question.save
    return render partial: 'question', layout: false, locals: { question: @question, :@answer => @answer }
  end

  def vote
    user = current_user
    @vote = Vote.where(user_id: user.id, question_id: @question.id).first
    if @vote
      if params[:vote] == 'upvote'
        @question.vote_count += 1 if @vote.count < 1
        @vote.count += 1 if @vote.count < 1
        @vote.save
      elsif params[:vote] == 'downvote'
        @question.vote_count -= 1 if @vote.count > -1
        @vote.count -= 1 if @vote.count > -1
        @vote.save
      end
    else
      if params[:vote] == 'upvote'
        Vote.create(user_id: user.id, question_id: @question.id, count: 1)
        @question.vote_count += 1
      elsif params[:vote] == 'downvote'
        Vote.create(user_id: user.id, question_id: @question.id, count: -1)
        @question.vote_count -= 1
      end
    end

    if @question.save
      if request.xhr?
        render json: @question.vote_count
      else
        redirect_to root_path
      end
    else
      render json: 'error', status: 400
    end
  end

  def search
    phrase = params[:phrase]

    unless phrase == 'all'
      @questions = @questions.where("lower(title) LIKE ? OR lower(body) LIKE ?", "%#{phrase}%", "%#{phrase}%")
    end

    return render :'questions/_all_questions', layout: false
  end

  def sort
    if params[:order] == 'popular'
      @questions = @questions.order(vote_count: :desc)
    elsif params[:order] == 'recent'
      @questions = @questions.order(created_at: :desc)
    end
    return render :'questions/_all_questions', layout: false
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, :hobby_id, :user_id)
  end

  def find_question
    @question = Question.where(id: params[:id]).first
  end

  def questions_by_hobby
    @questions = Question.where(hobby_id: params[:hobby_id])
  end

  def new_answer
    @answer = Answer.new
  end

end
