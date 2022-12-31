class Dock
  attr_reader :name,
              :max_rental_time,
              :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def get_renter_cc
    @rental_log.fetch


  end

  def charge(boat)
    charge_hash = {}

    charge_hash[credit_card_number] = renter.credit_card_number
    charge_hash[amount] = boat.price_per_hour * hours_rented
  end

end