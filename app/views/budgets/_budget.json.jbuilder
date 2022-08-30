json.extract! budget, :id, :name, :description, :starting_amount, :ending_amount, :start, :end, :created_at, :updated_at
json.url budget_url(budget, format: :json)
