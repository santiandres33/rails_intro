class DogsController < ApplicationController
  def index
  end

  def create
    # Una forma
    dog = Dog.create(dog_params)
    redirect_to owner_path(params[:owner_id])
    # Otra forma
    # owner = Owner.find(params[:owner_id])
    # owner.dogs.create(dog_params)
    # redirect_to owner_path(owner)
  end


  private

    def dog_params
      params.require(:dog).permit(:name, :breed).merge(owner_id: params[:owner_id])
    end
end
