class Doctor
  
  attr_accessor :name, :appointment, :patient 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
    
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
    
  def patients
    Appointment.all.map do |appointment|
      appointments.patient
    end
  end
  
  

end