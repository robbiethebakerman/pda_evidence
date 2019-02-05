### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

# No initialize function - should add one

# by convention, method should be called check_for_ace (will not result in a fail)
  def checkforAce(card)
# uses '=', should be '=='. As stands it will assign a value of 1 to the card
    if card.value = 1
      return true
    else
      return false
    end
  end

# 'dif' should read 'def'
# 'card1 card2' should read 'card1, card2'
# indentation is inconsistent - correct it
  dif highest_card(card1 card2)
  if card1.value > card2.value
# should return either card name for both or card object for both
# 'card' should read 'card1'
    return card.name
  else
    card2
# should have additional elsif for if card values are equal
  end
end
# extra end added - not needed
end

def self.cards_total(cards)
# total variable declared but not assigned any value. Should assign 0 initially.
  total
  for card in cards
    total += card.value
# return value should be outside of the loop - it needs to iterate over all of them first, then return the total
# should convert total to string using .to_s
# Should really put a space at the end of "You have a total of"
    return "You have a total of" + total
  end
end

# Missing the last end for class CardGame

```
