class Budget < ApplicationRecord
    has_many :categories, class_name: "category", foreign_key: "reference_id"
end
