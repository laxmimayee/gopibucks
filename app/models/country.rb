class Country < ActiveRecord::Base

	attr_accessible :name, :code
	has_many :states,dependent: :destroy
	scope :states_by_name, -> { states.order(name: :asc) } # Rails 4
end
