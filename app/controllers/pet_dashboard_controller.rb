class PetDashboardController < ApplicationController
  before_action :authenticate_user!

  def view_pet_status
    pet = current_user.pets.find(params[:pet_id])

    render json: {
      name: pet.name,
      type: pet.pet_type,
      health: pet.health,
      happiness: pet.happiness
    }
  end
end
