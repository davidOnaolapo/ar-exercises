class Employee < ActiveRecord::Base
  belongs_to :store
  validate :first_name_must_be_present,
    :last_name_must_be_present,
    :hourly_rate_must_be_int_btw_40_200,
    :employee_must_have_store


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

    def hourly_rate_must_be_int_btw_40_200
      if(hourly_rate < 40 || hourly_rate > 200)
        errors.add(:hourly_rate, "An employee's hourly rate must be between 40 and 200")
        puts "An employee's hourly rate must be between 40 and 200"
      end
    end

    def employee_must_have_store
      if(!self.store)
        errors.add(:store, "An employee must have a store")
        puts "An employee must have a store"
      end
    end
end
