class Traveller < ApplicationRecord
    has_many :bookings

    def self.create_traveller(name, phone_number)
        traveller = Traveller.new(name: name, phone_number: phone_number)
        traveller.save
        return traveller
    end
end
