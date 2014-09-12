class Mark < ActiveRecord::Base
  belongs_to :student, inverse_of: :marks
  validates :chinese,:english,:maths, presence: true
end
