
decks = [
  {topic: "Monty Python And The Holy Grail"},
  {topic: "Monty Python And The Life of Brian"},
  {topic: "Monty Python's The Meaning of Life"}
]

cards_content = [
  {question: "King Arthur's trusty servant is named ________.", answer: "Patsy", deck_id: 1},
  {question: "The Black Knight always _________. ", answer: "Triumphs", deck_id: 1},
  {question: "The Knights who say 'Ni' have a weakness of their own. They cannot stand to hear the word 'It' (True or False)", answer: "True", deck_id: 1},
  {question: "What, in fact, is the capital of Assyria?", answer: "Ashur", deck_id: 1},
  {question: "When baby Brian is crying at the beginning of the movie, what does his mother do to him?", answer: "Slaps him", deck_id: 2},
  {question: "What is Brian's surname?", answer: "Cohen", deck_id: 2},
  {question: "Where are you two from, ___ city?!", answer: "nose", deck_id: 2},
  {question: "How long was the 'ex-leper' behind the veil?", answer: "16 years", deck_id: 2},
  {question: "In the begining of the movie, how many clocks are there in the delivery room?", answer: "2", deck_id: 3},
   {question: "At the start of the movie, what is the name of the fish that gets eaten?", answer: "Howard", deck_id: 3},
    {question: "A _______ bites the major's leg off", answer: "tiger", deck_id: 3},
    {question: "During 'Live Organ Transplants', Mr. Brown donates his _______.", answer: "liver", deck_id: 3},

]


Deck.create!(decks)
Card.create!(cards_content)
