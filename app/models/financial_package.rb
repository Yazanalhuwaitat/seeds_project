class FinancialPackage < ApplicationRecord
  belongs_to :employee

  validate :from_date_cannot_be_before_2023
  validate :to_date_cannot_be_before_from_date
  validates :amount, numericality: { greater_than_or_equal_to: 200 }


  private

  def from_date_cannot_be_before_2023
    errors.add(:from_date, "cannot be before 1-Jan-2023") if from_date.present? && from_date < Date.new(2023, 1, 1) 
  end
  
  def to_date_cannot_be_before_from_date
    errors.add(:to_date, "cannot be less than From date") if to_date.present? && to_date < from_date 
  end
end
