require 'rails_helper'

RSpec.describe Result, type: :model do
  describe 'attributes' do
    it "has attributes" do
      attributes_hash = {station_name: "some", distance: 6.0, city: "denver", state: 'co', zip: '80323', street_address: '123 fake st', fuel_type_code: 'elec', access_days_times: '24hr'}
      result_1 = Result.new(attributes_hash)
      expect(result_1.name).to eq('some')
      expect(result_1.distance).to eq(6.0)
      expect(result_1.fuel_type).to eq('elec')
      expect(result_1.access_times).to eq('24hr')
    end
  end

  describe 'instance methods' do
    it 'has a method for full address' do
      attributes_hash = {station_name: "some", distance: 6.0, city: "denver", state: 'co', zip: '80323', street_address: '123 fake st', fuel_type_code: 'elec', access_days_times: '24hr'}
      result_1 = Result.new(attributes_hash)
      expect(result_1.address).to eq("123 fake st denver, co 80323")
    end
  end
end
