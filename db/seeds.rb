
decks = [
  {topic: "Monty Python And The Holy Grail"},
  {topic: "Monty Python And The Life of Brian"}
]

cards_content = [
  {question: "King Arthur's trusty servant is named ________.", answer: "Patsy", deck_id: 1},
  {question: "The Black Knight always _________. ", answer: "Triumphs", deck_id: 1},
  {question: "The Knights who say 'Ni' have a weakness of their own. They cannot stand to hear the word 'It' (True or False)", answer: "True", deck_id: 1},
  {question: "What, in fact, is the capital of Assyria?", answer: "Ashur", deck_id: 1},
  {question: "When baby Brian is crying at the beginning of the movie, what does his mother do to him?", answer: "Slaps him", deck_id: 2},
  {question: "What is Brian's surname?", answer: "Cohen", deck_id: 2},
  {question: "Where are you two from, ___ city?!", answer: "nose", deck_id: 2},
  {question: "How long was the 'ex-leper' behind the veil?", answer: "16 years", deck_id: 2}
]


Deck.create!(decks)
Card.create!(cards_content)
