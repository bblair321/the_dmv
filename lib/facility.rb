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
# this method will add a service to the services array
  def add_service(service)
    @services << service
  end
# this method will register a vehicle and add a fee to the collected fees
  def register_vehicle(vehicle)
    @registered_vehicles << vehicle
    fee = vehicle.fees
    @collected_fees += fee
  end

  def administer_written_test(registrant)
    # Check if the facility offers the "Written Test" service and if the registrant is eligible
    if @services.include?("Written Test") && registrant.permit?
      registrant.pass_written_test
      true
    else
      false
    end
  end
  # method that checks if the facility offers the road test service
  def administer_road_test(registrant)
    if @services.include?("Road Test")
      true
    else
      false
    end
  end
  # method that checks if the facility offers the license renewal service
  def renew_drivers_license(registrant)
    if @services.include?("License Renewal")
      true
    else
      false
    end
  end

end
