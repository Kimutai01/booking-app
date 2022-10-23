class Traveller < ApplicationRecord
  belongs_to :bus
  belongs_to :user
  after_create :reduce_seats
  def reduce_seats
    self.bus.capacity -= 1
    self.bus.save
  end
end
