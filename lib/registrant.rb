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

  def administer_written_test
    # if @age is greater than or equal to 16 and permit is true than the registrant passes the written test
    # if any condition is false they fail the test
    if @age >= 16 && @permit
      #we are updating the license_data hash with the key written and the value true
      @license_data[:written] = true
      true
    else
      @license_data[:written] = false
      false
    end
  end
end