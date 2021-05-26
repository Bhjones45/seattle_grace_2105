class Doctor
  # attr_reader :name,
  #             :specialty,
  #             :education,
  #             :salary
  def initialize(background)
  @background = background
  end

  def name
    @background[:name]
  end

  def specialty
    @background[:specialty]
  end

  def education
    @background[:education]
  end

  def salary
    @background[:salary]
  end
  
end
