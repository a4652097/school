class Student < ActiveRecord::Base
  belongs_to :grade, inverse_of: :students
  has_many :marks, inverse_of: :student
  validates :name, :age, presence: true
end
