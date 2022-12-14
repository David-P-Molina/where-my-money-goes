class Category < ApplicationRecord
  belongs_to :budget
  has_many :purchases, class_name: "purchase", foreign_key: "reference_id"

  validates :type, :description, :budget_id, presence: true
  
end
