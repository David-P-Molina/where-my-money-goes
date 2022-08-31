class Purchase < ApplicationRecord
  belongs_to :budget
  belongs_to :category

  validates :name, :store, :amount, :date, presence: true
  validates :amount , numericality: true
  validates :name, uniqueness: true

  #Custom Validations
  validate :date_must_be_within_budget_dates

  def date_must_be_within_budget_dates
    if date < budget.start || date > budget.end
      errors.add(:date, "must be in the budget's timeframe.")
    end
  end
end
