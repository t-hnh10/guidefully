class Booking < ApplicationRecord
  belongs_to :guide
  belongs_to :traveller
end
