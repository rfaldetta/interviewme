class Question < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :response_length_id, :presence => true
  validates :category_id, :presence => true
  validates :question, :presence => true, :uniqueness => true

end
