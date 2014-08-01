class Student < ActiveRecord::Base
  has_many :enrollments
  belongs_to :course
end
