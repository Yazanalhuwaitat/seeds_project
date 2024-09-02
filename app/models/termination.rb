class Termination < ApplicationRecord
  belongs_to :employee

  validates :term_date, presence: true
end
