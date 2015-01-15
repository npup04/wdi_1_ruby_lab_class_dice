require_relative '../lib/dice'

RSpec.describe Dice do
  let(:sides) { 6 }
  subject(:dice) { Dice.new(sides) }

  describe '#initialize' do
    it 'creates a new instance of Dice' do
      expect(dice).to be_a Dice
    end
  end

  #Test with default 6-sided dice
  describe '#roll' do
    it 'returns the roll of the Dice' do
      expect(dice.roll).to be_between(1, sides).inclusive
    end
  end

  #Test with 20-sided dice
  describe '#roll' do
    it 'returns the roll of the Dice' do
      expect(dice.roll).to be_between(1, 20).inclusive
    end
  end


end
