class Doctor 
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def self.all 
        @@all 
    end

    def patients 
        array = []
        Appointment.all.each do |appointment|
            if appointment.doctor == self 
                array << appointment.patient
                #hahahaha I put the date and patient in the wrong spots when initializing appointment. 
                #this caused a big dumb error. Dates are patients and patients are dates.
            end
        end
        array
        #need to read the docs on this "&:" thing a few more times for it to sink in
    end


end



# Doctor
#   #name
#     has a name (FAILED - 12)
#   #new
#     initializes with a name and adds itself to an array of all doctors (FAILED - 13)
#   #appointments
#     returns all appointments associated with this Doctor (FAILED - 14)
#   #new_appointment
#     given a date and a patient, creates a new appointment (FAILED - 15)
#   #patients
#     has many patients, through appointments (FAILED - 16)