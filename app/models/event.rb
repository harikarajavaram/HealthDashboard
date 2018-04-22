class Event < ApplicationRecord
  belongs_to :patient
  scope :filter_by_date, lambda { |date|
  where(:start_time => Time.parse(date).beginning_of_day..Time.parse(date).end_of_day)
  }  
end
