require './lib/doctor'

class Hospital
  attr_reader :name,
              :chief_of_surgery,
              :doctors,
              :background


  def initialize(name, chief_of_surgery, doctors)
    @name             = name
    @chief_of_surgery = chief_of_surgery
    @doctors          = doctors
    @background       = background
  end

  def total_salary #???
    @doctors.sum do |doctor|
      doctor.salary
    end

  end

  def lowest_paid_doctor
    lowest = @doctors[0].salary
    @doctors.select do |doctor|
      return doctor.name if doctor.salary < lowest
    end
  end

  def specialties
    specialties_list = []
    @doctors.each do |doctor|
      specialties_list << doctor.specialty
    end
    specialties_list
  end
end
