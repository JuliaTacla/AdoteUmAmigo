class FostersController < ApplicationController
  # GET /fosters/new
  def new
    @foster = Foster.new
  end

  # POST /fosters
  def create
    Foster.create(foster_params)
    animal = Animal.find(foster_params[:animal_id])
    animal.update(adopted: true)
    redirect_to root_path, notice: "#{animal.name} adotado com sucesso"
  end

  private

  def foster_params
    params.permit(:name, :age, :address, :pets, :children, :animal_id)
  end
end
