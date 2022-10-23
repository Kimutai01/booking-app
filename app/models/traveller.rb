class Traveller < ApplicationRecord
  belongs_to :bus
  belongs_to :user
  after_create :reduce_seats
  def reduce_seats
    self.bus.capacity -= self.number_of_seats
    self.bus.save
  end
end
