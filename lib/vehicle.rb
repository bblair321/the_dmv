require 'date'

class Vehicle
  attr_reader :vin,:year,:make,:model,:engine,:registration_date,:plate_type

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    # added the registration_date to vehicle_details hash
    @registration_date = vehicle_details[:registration_date]
    #plate type
    @plate_type = vehicle_details[:plate_type]
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end
  def fees
    if electric_vehicle?
      200
    elsif antique?
      25
    else
      100
    end
  end
end
