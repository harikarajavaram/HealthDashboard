class Patient < ApplicationRecord
	has_many :heartrates
	has_many :events
end
