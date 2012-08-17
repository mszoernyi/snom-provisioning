class Phone < ActiveRecord::Base
  attr_accessible :mac, :number, :sip_login, :sip_password

  after_save :clean_unknown_phone

  def clean_unknown_phone
    up = UnknownPhone.where(:mac_address => mac).first
    up.destroy unless up.nil?
  end
end
