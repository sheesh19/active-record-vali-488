class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, length: { minimum: 2 }, presence: true # uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }
end

# intern.doctor = Doctor.first

# many to many
# patients = []

# house = Doctor.first

# house.consultations.each do |consultation|
#   patients << consultation.patient
# end


# doctor.save => returns true or false
# doctor.save! => returns validation errors
