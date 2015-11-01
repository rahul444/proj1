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
    
    def new
        @pokemon = Pokemon.new
    end

    def create
        values = params[:pokemon]
        @pokemon = Pokemon.new
        @pokemon.name = values[:name]
        @pokemon.level = 1
        @pokemon.health = 100
        @pokemon.trainer_id = current_trainer.id
        if @pokemon.save
            redirect_to Trainer.find(current_trainer.id)
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to :action => "new"
        end
    end
    
end
