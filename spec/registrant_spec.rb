require 'spec_helper'
require './lib/registrant'

RSpec.describe Registrant do
  it 'is a defined class' do
    expect(defined?(Registrant)).to eq("constant")
  end

  it 'is a registrant name' do
    registrant_1 = Registrant.new('Bruce', 18, true )
    registrant_2 = Registrant.new('Penny', 15 )

    expect(registrant_1.name).to eq("Bruce")
  end

  it 'is a registrant age' do
    registrant_1 = Registrant.new('Bruce', 18, true )

    expect(registrant_1.age).to eq 18
  end

  it 'is a registrant permit' do
    registrant_1 = Registrant.new('Bruce', 18, true )

    expect(registrant_1.permit?).to eq true
  end

  it 'is a registrant license data' do
    registrant_1 = Registrant.new('Bruce', 18, true )

    expect(registrant_1.license_data).to eq({})
  end

  it 'is a registrant earn permit' do
    registrant_1 = Registrant.new('Bruce', 18, true )

    expect(registrant_1.earn_permit).to eq true
  end
end