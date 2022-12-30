require './lib/boat'
require './lib/renter'

RSpec.describe Boat do
  let(:kayak) { Boat.new(:kayak, 20) }
  let(:renter) { Renter.new("Patrick Star", "4242424242424242") }

  describe "Iteration 1" do
    it "has attributes" do
      expect(kayak).to be_an_instance_of(Boat)
      expect(kayak.type).to eq(:kayak)
      expect(kayak.price_per_hour).to eq(20)
    end

    it "can be rented ny the hour" do
      expect(kayak.hours_rented).to eq(0)
      kayak.add_hour
      kayak.add_hour
      kayak.add_hour
      expect(kayak.hours_rented).to eq(3)
    end

    it "can be rented by someone" do
      expect(renter).to be_an_instance_of(Renter)
      expect(renter.name).to eq("Patrick Star")
      expect(renter.credit_card_number).to eq("4242424242424242")
    end
  end

end