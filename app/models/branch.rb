class Branch < ApplicationRecord
  has_many :employees
  has_one :attendance_setup
  belongs_to :company
  has_many :rooms

  
  validates :branch_name, presence: true
end
