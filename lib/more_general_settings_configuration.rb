class MoreGeneralSettingsConfiguration < Configuration
  preference :business_name, :string, :default => ''
  preference :name, :string, :default => ''
  preference :address, :string, :default => ''
  preference :city, :string, :default => ''
  preference :state, :string, :default => ''
  preference :zip, :string, :default => ''
  preference :country, :string, :default => ''
  preference :phone, :string, :default => ''
  preference :cellphone, :string, :default => ''
  preference :bank_name, :string, :default => ''
  preference :bank_address, :string, :default => ''
  preference :bank_account_id, :string, :default => ''
end
