class Question < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :response_length_id, :presence => true
  validates :category_id, :presence => true
  validates :question, :presence => true, :uniqueness => true

  has_many :practice_interviews , :class_name => "PracticeQuestion", :foreign_key => "question_id"
  belongs_to :interviewer
  belongs_to :category , :class_name => "Category", :foreign_key => "category_id"
  belongs_to :question_length , :class_name => "ResponseLength", :foreign_key => "question_length_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
end
