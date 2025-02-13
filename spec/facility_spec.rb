require 'spec_helper'
require './lib/facility'
require './lib/vehicle'

RSpec.describe Facility do
  before(:each) do
    @facility = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
  end
  describe 'initialize' do
    it 'can initialize' do
      expect(@facility).to be_an_instance_of(Facility)
      expect(@facility.name).to eq('DMV Tremont Branch')
      expect(@facility.address).to eq('2855 Tremont Place Suite 118 Denver CO 80205')
      expect(@facility.phone).to eq('(720) 865-4600')
      expect(@facility.services).to eq([])
    end
  end

  describe 'add service' do
    it 'can add available services' do
      expect(@facility.services).to eq([])
      @facility.add_service('New Drivers License')
      @facility.add_service('Renew Drivers License')
      @facility.add_service('Vehicle Registration')
      expect(@facility.services).to eq(['New Drivers License', 'Renew Drivers License', 'Vehicle Registration'])
    end
  end

  describe 'registered vehicles' do
    it 'can check registered vehicles' do
      facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
      cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice} )
      facility_1.add_service('Vehicle Registration')


      expect(facility_1.registered_vehicles).to eq []
    end
  end

  describe 'collect fees' do
    it 'collect fees' do
      facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
      cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice} )
      facility_1.add_service('Vehicle Registration')


      expect(facility_1.collected_fees).to eq (0)
    end
  end

  it 'can register vehicles when service is available' do
    @vehicle1 = Vehicle.new({ vin: '123456789abcdefgh', year: 2015, make: 'Ford', model: 'Focus', engine: :ice })
    @facility.add_service("Vehicle Registration")

    @facility.register_vehicle(@vehicle1)
    expect(@facility.registered_vehicles).to eq([@vehicle1])
  end
  
  it 'collected fees' do
    @vehicle1 = Vehicle.new({ vin: '123456789abcdefgh', year: 2015, make: 'Ford', model: 'Focus', engine: :ice })
    @facility.add_service("Vehicle Registration")

    @facility.register_vehicle(@vehicle1) # Regular: $100

    expect(@facility.collected_fees).to eq(100)
  end

end
