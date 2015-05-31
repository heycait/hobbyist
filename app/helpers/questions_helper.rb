module QuestionsHelper
  def author(question)
    User.where(id: question.user_id).first.username
  end
end
