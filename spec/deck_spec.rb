require "minitest/autorun"
require "minitest/test"

require 'deck'
require 'card'

describe 'a deck of cards' do

  deck = Deck.new 
  
  it 'has 52 cards' do
    deck.cards.length.must_equal 52
  end

  it 'should not have two identical cards' do
    deck.cards.uniq!.must_be_nil
  end
end
