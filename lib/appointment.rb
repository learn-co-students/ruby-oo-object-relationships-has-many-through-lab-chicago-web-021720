class Appointment
    attr_accessor :date, :patient, :doctor
    attr_reader

    @@all = []

    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

end