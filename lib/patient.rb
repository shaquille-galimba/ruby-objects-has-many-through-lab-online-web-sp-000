class Appointment

  @@all = []

  def initialize(date, patient, doctor)
    @date, @patient, @doctor = date, patient, doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
end