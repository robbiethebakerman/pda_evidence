require('minitest/autorun')
require('minitest/rg')
require_relative('../card.rb')
require_relative('../testing_task_2.rb')

class CardGameTest < MiniTest::Test

  def setup
    @card_1 = Card.new('Spades', 1)
    @card_2 = Card.new('Hearts', 10)
    @card_3 = Card.new('Clubs', 10)
    @cards = [@card_1, @card_2]
    @card_game = CardGame.new
  end

  def test_checkforAce_true
    result = @card_game.checkforAce(@card_1)
    assert_equal(true, result)
  end

  def test_checkforAce_false
    result = @card_game.checkforAce(@card_2)
    assert_equal(false, result)
  end

  def test_highest_card_card_1
    result = @card_game.highest_card(@card_2, @card_1)
    assert_equal(@card_2, result)
  end

  def test_highest_card_card_2
    result = @card_game.highest_card(@card_1, @card_2)
    assert_equal(@card_2, result)
  end

  def test_highest_card_equal
    result = @card_game.highest_card(@card_2, @card_3)
    assert_equal('Card values are equal', result)
  end

  def test_cards_total
    result = CardGame.cards_total(@cards)
    assert_equal('You have a total of 11', result)
  end

end
