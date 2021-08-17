class Store < ActiveRecord::Base
  has_many :employees
  validate :first_name_must_be_present;

  def first_name_must_be_present
    if(!name || name == "")
      errors.add(:name, "You need to have a first name")
      puts "You need to have a first name"
    end
  end
end
