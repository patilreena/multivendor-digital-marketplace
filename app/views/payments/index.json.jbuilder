json.array!(@payments) do |payment|
  json.extract! payment, :id, :method, :status, :trans_id, :order_id
  json.url payment_url(payment, format: :json)
end
