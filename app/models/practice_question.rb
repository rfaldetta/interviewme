class PracticeQuestion < ActiveRecord::Base

  validates :practice_interview_id, :presence => true
  validates :question_id, :presence => true

  belongs_to :practice_interview , :class_name => "PracticeInterview", :foreign_key => "practice_interview_id"
  belongs_to :question
end
