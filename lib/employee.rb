class Employee < ActiveRecord::Base
  belongs_to :store
  validate :first_name_must_be_present,
    :last_name_must_be_present
    # :hourly_rate_must_be_int_btw_40_200,
    # :employee_must_have_store


    def first_name_must_be_present
      if(!first_name || first_name == "")
        errors.add(:last_name, "An employee must have a first name")
        puts "An employee must have a first name"
      end
    end

    def last_name_must_be_present
      if(!last_name || last_name == "")
        errors.add(:last_name, "An employee must have a last name")
        puts "An employee must have a last name"
      end
    end
end
