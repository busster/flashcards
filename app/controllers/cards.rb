get '/decks/:deck_id/cards/:card_id' do

  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])

  if Round.find_by(user_id: current_user.id, deck_id: params[:deck_id]) && @deck.cards.where
    @round = Round.find_by(user_id: current_user.id, deck_id: params[:deck_id] )
    erb :'cards/show'
  else
      @round = Round.create(user_id: current_user.id, deck_id: params[:deck_id])
      @current_round = current_user.rounds.last
      erb :'cards/show'
  end

end

post '/decks/:deck_id/cards/:card_id' do
  user = User.find(session[:user_id])
  round = Round.where(user_id: current_user.id, deck_id: params[:deck_id]).last
  card = Card.find(params[:card_id])
  @current_round = user.rounds.last
  @current_round.update_attributes(total_guesses: (@current_round.total_guesses += 1))
  if !card.already_guessed && card.correct?(params[:answer])
   @current_round.update_attributes(first_try: (@current_round.first_try += 1))
    card.correct_answer
  elsif card.correct?(params[:answer])
    card.correct_answer
  else
    card.already_guessed = true
  end
  cards = Deck.find_by(id: params[:deck_id]).cards
  card = cards.where(correct: false).sample
  if card
    redirect "/decks/#{params[:deck_id]}/cards/#{card.id}"
  else
    Deck.find_by(id: params[:deck_id]).cards.update_all(correct: false, already_guessed: false)
    redirect "/decks/#{params[:deck_id]}/rounds/#{@current_round.id}"
  end

end
