class State < ActiveRecord::Base
	attr_accessible :name,:iso,:countries_id
	belongs_to :country
end
