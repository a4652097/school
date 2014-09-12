class Grade < ActiveRecord::Base
  has_many :students, inverse_of: :grade,dependent: :destroy
  validates :name, presence: true
end
