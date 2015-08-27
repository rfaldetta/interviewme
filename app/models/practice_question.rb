class PracticeQuestion < ActiveRecord::Base

  validates :practice_interview_id, :presence => true
  validates :question_id, :presence => true

end
