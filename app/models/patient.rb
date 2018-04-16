class Patient < ApplicationRecord
	has_many :heartrate
	has_many :event
end
