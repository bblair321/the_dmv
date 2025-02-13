class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :collected_fees

  def initialize(attributes)
    # switched to a hash instead of individual arguments
    @name = attributes[:name]
    @address = attributes[:address]
    @phone = attributes[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def collected_fees
    @collected_fees
  end

  def register_vehicle(vehicle)
    @registered_vehicles << vehicle
  end

end
