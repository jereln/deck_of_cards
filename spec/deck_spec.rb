require 'minitest/autorun'
require 'minitest/test'
require 'deck'

describe 'a deck of cards' do
  deck = Deck.new 
  
  it 'has 52 cards' do
    deck.cards.length.must_equal 52
  end

  it 'does not have two identical cards' do
    deck.cards.uniq!.must_be_nil
  end

  it 'has all four suits' do
    assert_includes deck.cards.to_s, 'hearts'
    assert_includes deck.cards.to_s, 'diamonds'
    assert_includes deck.cards.to_s, 'clubs'
    assert_includes deck.cards.to_s, 'spades'
  end
end
