get '/decks/:deck_id/cards/:card_id' do

  @deck = Deck.find_by(id: params[:deck_id])
  @card = Card.find_by(id: params[:card_id])

  if Round.find_by(user_id: current_user.id, deck_id: params[:deck_id] )
    @round = Round.find_by(user_id: current_user.id, deck_id: params[:deck_id] )
    erb :'cards/show'
  else
      @round = Round.create(user_id: current_user.id, deck_id: params[:deck_id])
      @current_round = current_user.rounds.last
      erb :'cards/show'
  end

end



post '/decks/:deck_id/cards/:card_id' do
  deck = Deck.find_by(id: params[:deck_id])

  user = User.find_by(id: session[:user_id])

  card = Card.find_by(id: params[:card_id])
  user.rounds.last.total_guesses += 1

    if !card.already_guessed && card.correct?(params[:answer])
      user.rounds.last.first_try += 1
      card.correct_answer
    elsif card.correct?(params[:answer])
      p card.correct_answer
    else
      card.already_guessed = true
    end
      p "**********************1"
      cards = Card.where(correct: false)
      p "---------------------"
      p cards
      p "---------------------"
      @card = cards.sample
      p "--------------------"
      p @card
      p "**********************11"
 p "**********************4"
  redirect "/decks/#{deck.id}/cards/#{@card.id}"
end
