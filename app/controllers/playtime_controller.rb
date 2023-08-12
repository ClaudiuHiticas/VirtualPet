class PlaytimeController < ApplicationController
  before_action :authenticate_user!
  def play_with_pet
    pet = current_user.pets.find(params[:pet_id])
    toy = Toy.find(params[:toy_id])

    pet.update(happiness: pet.happiness + toy.happiness_bonus)
    render json: { message: "Pet played with successfully!" }
  end
end
