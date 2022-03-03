require 'rails_helper'

RSpec.describe Direction do 
  let(:details) { Direction.new({ distance: 0.18, formattedTime: "00:05:00", narrative: "Turn Left" })}
  
  describe 'initialize' do 
    it 'exists' do 
      actual = details 
      expected = Direction 

      expect(actual).to be_a(expected)
    end 
  end 

  describe "attributes" do 
    xit 'has distance' do 
      actual = details.distance
      expected = 0.18

      expect(actual).to eq(expected)
    end 

    xit 'has a time' do 
      actual = details.time
      expected = "00:05:00"

      expect(actual).to eq(expected)
    end 

    xit 'has directions' do 
      actual = details.directions
      expected = "Turn Left"

      expect(actual).to eq(expected)
    end 
  end 

end 