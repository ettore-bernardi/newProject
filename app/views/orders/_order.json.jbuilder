json.extract! order, :id, :total, :user_id, :order_date, :done, :created_at, :updated_at
json.url order_url(order, format: :json)
