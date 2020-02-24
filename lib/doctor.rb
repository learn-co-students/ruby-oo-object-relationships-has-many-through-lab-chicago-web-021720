class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    self.class.all << self
  end
  def self.all
    @@all
  end
  def new_appointment(patient,date)
    Appointment.new(date, patient, self)
  end
  def appointments
    Appointment.all.find_all{|appointment| appointment.doctor == self}
  end
  def patients
    self.appointments.collect{|app| app.patient}
  end
end
