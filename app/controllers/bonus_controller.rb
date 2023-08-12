class BonusController < ApplicationController
  before_action :authenticate_user!, only: :breed_pets
  def virtual_pet_parade
    pets = Pet.all.sample(params[:no_pets].to_i)
    render json: pets, only: [:id, :name, :pet_type, :health, :happiness]
  end

  def breed_pets
    parent1 = Pet.find(params[:parent1_id])
    parent2 = Pet.find(params[:parent2_id])

    if parent1.user == current_user && parent2.user == current_user
      offspring_attributes = {
        name: "Offspring of #{parent1.name} and #{parent2.name}",
        pet_type: "Mixed",
        health: (parent1.health + parent2.health) / 2,
        happiness: (parent1.happiness + parent2.happiness) / 2
      }

      offspring = current_user.pets.create(offspring_attributes)

      render json: offspring, status: :created
    else
      render json: { error: "You can only breed your own pets." }, status: :forbidden
    end
  end
end
