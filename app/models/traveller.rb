class Traveller < ApplicationRecord
  belongs_to :bus
  belongs_to :user
  after_create :reduce_seats
  after_create :add_seat_to_user
  after_destroy :increase_seats, :remove_seat_from_user
  def reduce_seats
    self.bus.capacity -= self.number_of_seats
    self.bus.save
  end

  def increase_seats
    self.bus.capacity += self.number_of_seats
    self.bus.save
  end

  def add_seat_to_user
      self.user.booked = true
      self.user.save
  end

  def remove_seat_from_user
    self.user.booked = false
    self.user.save
  end
end
