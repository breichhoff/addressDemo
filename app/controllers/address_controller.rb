#controller for Addresses
class AddressController < ApplicationController
  #for viewing a list of all addresses
  def list
    @addresses = Address.all
  end

  #for viewing a single address
  def show
    @address = Address.find(params[:id])
  end

  #for creation of a new address
  def new
    @address = Address.new
  end

  #full logic for creating a new address
  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end
  def address_params
    params.require(:addresses).permit(:city, :state, :street_address, :zip, :person_id)
  end

  #for deleting an address
  def delete
    Address.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
