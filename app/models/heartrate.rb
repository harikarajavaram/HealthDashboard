class Heartrate < ApplicationRecord
  belongs_to :patient
  scope :filter_by_date, lambda { |date|
  # clauses = []
  # args = []
  # dates.split(',').each do |date|
  #   m, d, y = date.split '/'
  #   clauses << '(time >= ? AND time <= ?)'
  #   args.push b, e
  # end
  where(:time => Time.parse(date).beginning_of_day..Time.parse(date).end_of_day)
}
end
