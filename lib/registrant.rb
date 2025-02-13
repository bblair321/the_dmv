class Registrant #created registrant class
  attr_reader
  def initialize(name,age,permit,license_data)
    @name = name
    @age = age
    @permit = permit
    @license_data = license_data
  end
end