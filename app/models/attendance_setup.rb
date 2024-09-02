class AttendanceSetup < ApplicationRecord
  belongs_to :branch
  
  validates_inclusion_of :roaster, in: [true, false]

end
