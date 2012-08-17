class UnknownPhone < ActiveRecord::Base
  attr_accessible :mac_address, :requester_ip
  validates_uniqueness_of :mac_address
end
