# You get any card as an argument. Your task is to return a suit of this card.

# eg:

# ('3C') -> return 'clubs'
# ('3D') -> return 'diamonds'
# ('3H') -> return 'hearts'
# ('3S') -> return 'spades'

def define_suit(card)
  # Good luck
  case card.downcase
  when '3c'
    'clubs'
  when '3d'
    'diamonds'
  when '3h'
    'hearts'
  when '3s'
    'spades'
  else
    card
  end
end

p define_suit('3C')
p define_suit('3D')
p define_suit('3H')
p define_suit('3S')
p define_suit('A')

def define_suit(card)
  # Good luck
  suits = { C: 'Clubs', D: 'Diamonds', H: 'Hearts', S: 'Spades' }
  suits[card[1].to_sym]
end

puts "-" * 45
p define_suit('3C')
p define_suit('3D')
p define_suit('3H')
p define_suit('3S')

puts "-" * 45
p define_suit('3C')
p define_suit('QS')
p define_suit('9D')
p define_suit('JH')
# p define_suit('A')

