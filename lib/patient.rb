class Patient
    attr_accessor :name
    attr_reader

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.find_all { |app| app.patient == self }
    end

    def doctors
        self.appointments.map { |app| app.doctor }
    end

end