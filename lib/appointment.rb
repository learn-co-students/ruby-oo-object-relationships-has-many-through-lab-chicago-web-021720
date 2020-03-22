class Appointment 
    attr_accessor :date, :doctor, :patient

    @@all = []
  
    def initialize(date, patient, doctor)
      @date = date
      @doctor = doctor
      @patient = patient
      @@all << self
    end
  
    def self.all
      @@all
    end
  end

# Appointment
# .all
#   knows about all appointments that have been created (FAILED - 17)
# #new
#   initializes with a date, patient, and doctor (FAILED - 18)
# #patient
#   belongs to a patient (FAILED - 19)
# #doctor
#   belongs to a doctor (FAILED - 20)

