class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end
 
  def create
    @pokemon = Pokemon.create(pokemon_params)
    @pokemon.update(health: 100, level: 1, trainer_id: current_trainer.id)

    if @pokemon.save
      redirect_to trainer_path(current_trainer)
    else
      render "new"
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(trainer_id: current_trainer.id)

    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @health = @pokemon.health - 10

    if @health <= 0
      @pokemon.destroy
      redirect_to trainer_path(current_trainer)
    else
      @pokemon.update(health: @health)
      redirect_to trainer_path(current_trainer)   
    end

  end

  private 
    def pokemon_params
      params.require(:pokemon).permit(:name, :ndex)
    end

end
