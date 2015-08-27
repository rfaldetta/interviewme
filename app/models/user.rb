class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :practice_interviews , :class_name => "PracticeInterview", :foreign_key => "user_id"
  has_many :questions , :class_name => "Question", :foreign_key => "user_id"
end
