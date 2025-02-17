class VehicleFactory
  attr_reader :create_vehicles
  def initialize
    @create_vehicles = []
  end
  def create_vehicles(vehicle_details)
    @create_vehicles << vehicle_details
  end
end