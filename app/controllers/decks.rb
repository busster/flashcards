get '/decks' do
  @decks = Deck.all
  erb :"decks/index"
end

get '/decks/:deck_id/cards/:card_id' do

  @deck = Deck.find_by(params[:deck_id])
  @card = Card.find_by(params[:card_id])


end

post '/decks/:deck_id/cards/:card_id' do

  redirect "/decks/:deck_id/cards/#{card.id}"
end
