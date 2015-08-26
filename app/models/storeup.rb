class Storeup < ActiveRecord::Base
	has_secure_password
	before_save :default_values
	
  def default_values
    self.approval ||= 'P'
  end
end
