#controller for People
class PersonController < ApplicationController
  #for viewing a list of all people
  def list
    @people = Person.all
  end

  #for viewing a single person
  def show
    @person = Person.find(params[:id])
    @addresses = @person.addresses
  end

  #creating a new person
  def new
    @person = Person.new
  end

  #full logic for creating a new person
  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end
  def person_params
    params.require(:people).permit(:first_name, :middle_name, :last_name)
  end

  #for deleting a person and his/her addresses
  def delete
    @addresses = Address.where(person_id: params[:id])
    @addresses.each do |c|
      Address.find(c.id).destroy
    end
    Person.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
