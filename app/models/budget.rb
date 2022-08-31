class Budget < ApplicationRecord
    has_many :categories, class_name: "category", foreign_key: "reference_id"
    has_many :purchases, class_name: "purchase", foreign_key: "reference_id"

    validates :name, :description, :starting_amount, :start, :end , presence: true
    validates :starting_amount , numericality: true
    validates :ending_amount, absence: true
    validates :name, uniqueness: true

    #Custom Validations
end
