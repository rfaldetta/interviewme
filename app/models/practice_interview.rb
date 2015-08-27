class PracticeInterview < ActiveRecord::Base

  validates :user_id, :presence => true

  has_many :practice_questions , :class_name => "PracticeQuestion", :foreign_key => "practice_interview_id"
  belongs_to :user
  has_many :questions, :through => :practice_questions
end
