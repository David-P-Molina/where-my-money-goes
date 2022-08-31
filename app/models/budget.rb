class Budget < ApplicationRecord
    has_many :categories, class_name: "category", foreign_key: "reference_id"
    has_many :purchases, class_name: "purchase", foreign_key: "reference_id"

    validates :name, :description, :starting_amount, :start, :end , presence: true
    validates :starting_amount, :ending_amount, numericality: true
    validates :ending_amount, absence: true
    validates :name, uniqueness: true

    #Custom Validations
    validate :starting_amount_is_greater_than_zero

    def starting_amount_is_greater_than_zero
        if starting_amount < 0
            errors.add(:starting_amount, "can't be smaller than zero.")
        end
    end
end
