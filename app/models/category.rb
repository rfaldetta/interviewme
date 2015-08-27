class Category < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true

  has_many :questions , :class_name => "Question", :foreign_key => "category_id"
end
