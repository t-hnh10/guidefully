class Guide < ApplicationRecord
    has_many :bookings

    def self.create_guide(name, phone_number, city, country, cost)
        guide = Guide.new(name: name, phone_number: phone_number, city: city, country: country, cost: cost)
        guide.save
        return guide
    end
end
