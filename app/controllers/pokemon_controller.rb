class PokemonController < ApplicationController
    def capture
        current_pokemon = Pokemon.find params[:id]
        current_pokemon.trainer_id = current_pokemon.id
        current_pokemon.save
        redirect_to root_path
    end
end
