class Dmv
  def initialize
    @facilities = []
  end

  def add_facility(facility)
    @facilities << facility
  end

  def facilities_offering_service(service)
    # Using `.select` to get all matching facilities
    @facilities.select do |facility|
      facility.services.include?(service)
    end
  end
end
