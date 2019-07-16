class Booking < ApplicationRecord
  belongs_to :guide
  belongs_to :user

  def self.create_booking(date, guide_id, user_id)
    booking = Booking.new(date: date, guide_id: guide_id, user_id: user_id)
    if booking.save == false
      logger.info booking.errors.inspect
    end
    return booking
  end
end
