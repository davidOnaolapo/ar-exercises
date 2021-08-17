class Store < ActiveRecord::Base
  has_many :employees
  validate :name_min_of_3_chars
    # :annual_revenue_must_be_a_int_greater_than_0
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}

  def name_min_of_3_chars
    if(!name || name.length < 3)
      errors.add(:name, "Store name must be more than 3 characters")
      puts "Store name must be more than 3 characters"
    end
  end
end
