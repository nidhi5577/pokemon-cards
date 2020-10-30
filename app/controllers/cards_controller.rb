require 'net/http'
require 'net/https'

class CardsController < ApplicationController

  def index
  	@cards = Card.all 
  	@cards = Card.search(params[:search])
  end

  def create
    # get JSON
    result = Net::HTTP.get(URI.parse('https://api.pokemontcg.io/v1/cards'))
    # parse JSON
    json = JSON.parse(result)
    # save data to DB
    json['cards'].each do |data|
      Card.find_or_create_by(
        uid: data['id'],
        name: data['name'],
        imageUrl: data['imageUrl'],
        imageUrlHiRes: data['name'],
        supertype: data['supertype'],
        subtype: data['subtype'],
        number: data['number'],
        rarity: data['rarity'],
        artist: data['artist'],
        series: data['series'],
        set: data['set'],
        setCode: data['setCode'],
        text: data['text']
        )
      end
    redirect_to root_path
  end

  def destroy_all
  	Card.all.delete_all
  	redirect_to root_path
  end
end
