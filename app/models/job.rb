class Job < ApplicationRecord
  scope :published, -> {where(is_hidden: false)}
  scope :recent, ->{order('created_at DESC')}
  def publish!
    self.is_hidden = false
    self.save
  end
  def hide!
    self.is_hidden = true
    self.save
  end
  validates :title, presence: true
  validates :wage_lower_lound,presence: true
  validates :wage_upper_lound,presence: true
  validates :wage_lower_lound,numericality: {greater_than: 0}
end
