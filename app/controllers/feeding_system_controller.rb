class FeedingSystemController < ApplicationController
  before_action :authenticate_user!

  def feed_pet
    pet = current_user.pets.find(params[:pet_id])
    food = Food.find(params[:food_id])

    pet.update(health: pet.health + food.health_bonus)

    render json: { message: "Pet fed successfully!" }
  end
end
