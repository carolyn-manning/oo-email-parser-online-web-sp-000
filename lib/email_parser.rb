class EmailAddressParser

  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    array = @email_addresses.split()
    new_array = array.collect {|email| email.gsub(",", "")}
    array.uniq
  end

end
