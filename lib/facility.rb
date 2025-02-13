class Facility
  attr_reader :name, :address, :phone, :services

  def initialize(attributes)
    # switched to a hash instead of individual arguments
    @name = attributes[:name]
    @address = attributes[:address]
    @phone = attributes[:phone]
    @services = []
  end

  def add_service(service)
    @services << service
  end
end
