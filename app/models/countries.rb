class Countries < ActiveRecord::Base
	attr_accessible :cname, :ccode, :ccurrency
	has_many :states,dependent: :destroy
end
