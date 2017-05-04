class PeopleController < ApplicationController
  protect_from_forgery :only => [:index]


  def index
    @people = Person.all
    if params[:q].present?
      @people = @people.where("name LIKE :q", q: "%#{params[:q]}%")
    end
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @people }
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
    @person = Person.create!(person_params)
    respond_to do |format|
      format.html { redirect_to people_path}
      format.json { render json: person}
      format.js
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :email, addresses_attributes: [:city, :street])
  end
end
