class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments 
        Appointment.all.select {|appointment| appointment.patient == self}
    end 

    def doctors 
        appointments.map(&:doctor)
    end

    
    
end



# Patient
#   #new
#     initializes with a name (FAILED - 21)
#   #new_appointment
#     given a doctor and date, creates a new appointment belonging to that patient (FAILED - 22)
#   .all
#     knows about all patients (FAILED - 23)
#   #appointments
#     returns all appointments associated with this Patient (FAILED - 24)
#   #doctors
#     has many doctors through appointments (FAILED - 25)