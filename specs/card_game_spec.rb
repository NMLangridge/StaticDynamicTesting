require('minitest/autorun')
require('minitest/rg')
require_relative('../card.rb')
require_relative('../card_game.rb')

class CardGameTest < MiniTest::Test

  def setup
    @card = Card.new("hearts", 1)
    @card_game = CardGame.new
    @card1 = Card.new("spades", 10)
    @card2 = Card.new("clubs", 5)
    @cards = [@card1, @card2]
  end

  def test_check_for_ace()
    assert_equal(true, @card_game.check_for_ace(@card))
  end

  def test_highest_card()
    assert_equal(@card1, @card_game.highest_card(@card1, @card2))
  end

  def test_cards_total()
    assert_equal("You have a total of 15", CardGame.cards_total(@cards))
  end

end
