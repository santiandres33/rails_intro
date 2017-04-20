class PeopleController < ApplicationController
  def index
    @people = Person.all
    if params[:q].present?
      @people = @people.where("name LIKE :q", q: "%#{params[:q]}%")
    end
  end

  def new
    @person = Person.new
    2.times do
      @person.addresses.build
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
  end

  def update
  end

  def create
    Person.create!(person_params)
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :email, addresses_attributes: [:city, :street])
  end
end
