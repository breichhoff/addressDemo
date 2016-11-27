#model for address
class Address < ApplicationRecord
	belongs_to :person
	validates_presence_of :city
	validates_presence_of :street_address
	validates_presence_of :state
	validates_numericality_of :zip, :message => "Must input number"
end
