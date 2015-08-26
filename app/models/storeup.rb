class Storeup < ActiveRecord::Base
	before_save :default_values
	
  def default_values
    self.approval ||= 'P'
  end
end
