require 'rails_helper'

RSpec.describe FuelStation do 
  let(:details) { FuelStation.new({ station_name: "Energy", street_address: "1234", zip: "80204", fuel_type_code: "ELEC", access_days_time: "Everyday"})}
  
  describe 'initialize' do 
    it 'exists' do 
      actual = details 
      expected = FuelStation 

      expect(actual).to be_a(expected)
    end 
  end 

  describe "attributes" do 
    it 'has a name' do 
      actual = details.name
      expected = 'Energy'

      expect(actual).to eq(expected)
    end 
    it 'has a street' do 
      actual = details.street
      expected = '1234'

      expect(actual).to eq(expected)
    end 
    it 'has a zip' do 
      actual = details.zip
      expected = '80204'

      expect(actual).to eq(expected)
    end 
    it 'has a fuel_type' do 
      actual = details.fuel_type
      expected = 'ELEC'

      expect(actual).to eq(expected)
    end 
    it 'has a access_times' do 
      actual = details.access_times
      expected = 'Everyday'

      expect(actual).to eq(expected)
    end 
  end 

end 