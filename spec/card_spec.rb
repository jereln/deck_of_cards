require 'minitest/autorun'
require 'minitest/test' 

require 'deck'

describe 'card' do
  card = Card.new('hearts', 4)

  it 'has a suit' do
    card.suit.must_equal 'hearts'  
  end

  it 'has a rank' do
    card.rank.must_equal 4  
  end
end
