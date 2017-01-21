class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_lower_lound,presence: true
  validates :wage_upper_lound,presence: true
  validates :wage_lower_lound,numericality: {greater_than: 0}
end
