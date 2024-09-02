class Company < ApplicationRecord
    has_many :branches
    validates :name, presence: true
  end
  