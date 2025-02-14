class Registrant
  attr_reader :name, :age, :permit, :license_data
  # had to add a empty hash to my license_data instance so it would have a default variable
  # had to add a default value for my permit instance in case the data passed doesn't contain anything
  def initialize(name,age,permit = false, license_data = {})
    @name = name
    @age = age
    @permit = permit
    @license_data = license_data
  end

  def permit?  
    @permit
  end

  def license_info
    @license_data[type] = status
  end
end