class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles

  def initialize(attributes)
    # switched to a hash instead of individual arguments
    @name = attributes[:name]
    @address = attributes[:address]
    @phone = attributes[:phone]
    @services = []
    @registered_vehicles = []
  end

  def add_service(service)
    @services << service
  end

  def collected_fees
    collected_fees = 0
  end

end
