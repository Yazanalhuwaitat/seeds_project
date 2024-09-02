class Employee < ApplicationRecord
  has_many :financial_packages
  has_one :termination
  belongs_to :branch
  has_and_belongs_to_many :rooms

  validates :emp_name, presence:true
  validates :email, presence:true, uniqueness: true
  validates :hire_date, presence:true
  validates :employment_number, presence:true, uniqueness: { scope: :branch }
end
