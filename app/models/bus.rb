class Bus < ApplicationRecord
  has_many :travellers
  has_one_attached :photo
end
