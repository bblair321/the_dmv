class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :collected_fees, :plate_type

  def initialize(attributes)
    # switched to a hash instead of individual arguments
    @name = attributes[:name]
    @address = attributes[:address]
    @phone = attributes[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
    @plate_type = []
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
    @registered_vehicles << vehicle
    fee = vehicle.fees
    @collected_fees += fee
  end

end
