get '/decks/:deck_id/cards/:card_id' do

  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])

  erb :"cards/show"
end



post '/decks/:deck_id/cards/:card_id' do

  redirect "/decks/:deck_id/cards/#{card.id}"
end
