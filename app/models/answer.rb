class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :votes

  validates_presence_of :body, :question_id, :user_id
end
