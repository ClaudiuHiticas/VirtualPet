class AdoptionCenterController < ApplicationController
  before_action :authenticate_user!

  def adopt_pet
    pet = Pet.find(params[:pet_id])
    if pet.user
      render json: { message: "Pet already adopted!" }
    else
      pet.user = current_user
      current_user.pets << pet
      render json: { message: "Pet adopted successfully!" }
    end
  end
end
