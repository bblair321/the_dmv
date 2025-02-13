require 'spec_helper'
require './lib/registrant'

RSpec.describe Registrant do
  it 'is a defined class' do
    expect(defined?(Registrant)).to eq("constant")
  end
end