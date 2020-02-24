require_relative 'appointment.rb'

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

    def appointments
        Appointment.all.select do |app|
            app.patient == self
        end 
    end 

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    def doctors
        self.appointments.map do |app|
            app.date
            
            
        end
    end 



end 



