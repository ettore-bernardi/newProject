json.extract! address, :id, :city, :street, :number, :zipCode, :user_id, :created_at, :updated_at
json.url address_url(address, format: :json)
