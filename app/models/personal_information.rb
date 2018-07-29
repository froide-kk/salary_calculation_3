class PersonalInformation < ApplicationRecord
  belongs_to :department
  belongs_to :position_grade
  belongs_to :task
  belongs_to :residence
end
