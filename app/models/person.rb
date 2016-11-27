#model for Person
class Person < ApplicationRecord
  has_many:addresses
  validates_presence_of:first_name
  validates_presence_of:middle_name
  validates_presence_of:last_name
  #method for displaying a person's full name
  def full_name
		"#{first_name} #{middle_name} #{last_name}"
  end
end
