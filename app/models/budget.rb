class Budget < ApplicationRecord
    has_many :categories, class_name: "category", foreign_key: "reference_id"
    has_many :purchases, class_name: "purchase", foreign_key: "reference_id"
end
