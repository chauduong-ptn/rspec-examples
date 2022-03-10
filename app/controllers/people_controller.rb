class PeopleController < ApplicationController
  def show
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to @person
    else
      render :new
    end
  end

  def person_params
    params.require(:person).permit(:name, address_attributes: [:country])
  end
end
