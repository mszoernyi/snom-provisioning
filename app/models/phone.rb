class Phone < ActiveRecord::Base
  attr_accessible :mac, :number, :sip_login, :sip_password
end
