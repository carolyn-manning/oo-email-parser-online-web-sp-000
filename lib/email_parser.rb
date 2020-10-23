class EmailAddressParser

  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    new_array = @email_addresses.split.collect {|email| email.gsub(",", "")}
    new_array.uniq
  end

end
