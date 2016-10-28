get '/decks/:deck_id/cards/:card_id' do

  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])

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

  redirect "/decks/:deck_id/cards/#{card.id}"
end
