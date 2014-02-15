class State < ActiveRecord::Base
	attr_accessible :name,:iso,:country_id
	belongs_to :country
	
	default_scope :order => 'states.name ASC'
end
