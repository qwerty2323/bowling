require_relative '../bowling'

describe Bowling do
  context '#score' do
    let :bowling { Bowling.new }
    it 'is zero at the start' do
      expect(bowling.score).to eq 0
    end

    it 'is nonzero after first successful hit' do
      bowling.hit(4)
      expect(bowling.score).to eq 4
    end

    it 'is comulated after first successfil frame' do
      bowling.hit(4)
      bowling.hit(3)
      expect(bowling.score).to eq 7
    end

    it 'is comulated after first hit after Spare' do
      bowling.hit(3)
      bowling.hit(7)
      bowling.hit(3)
      expect(bowling.score).to eq 16
    end
  end
end
