class Patient
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    self.class.all << self
  end
  def self.all
    @@all
  end
  def new_appointment(doctor,date)
    Appointment.new(date,self,doctor)
  end
  def appointments
    Appointment.all.find_all{|appoint| appoint.patient == self}
  end
  def doctors
    Appointment.all.collect{ |appoint| appoint.doctor }
  end

end
