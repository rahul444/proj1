class PokemonController < ApplicationController
    def capture
        current_pokemon = Pokemon.find params[:id]
        current_pokemon.trainer_id = current_pokemon.id
        current_pokemon.save
        redirect_to root_path
    end
    
    def damage
        current_pokemon = Pokemon.find(params[:id])
        current_pokemon.health -= 10
        if current_pokemon.health == 0
            current_pokemon.destroy
        else 
            current_pokemon.save
        end
        redirect_to trainers_path(params[:trainer])
    end
end
