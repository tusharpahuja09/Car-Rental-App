json.extract! reservation, :id, :reserve_date, :checkout_date, :returndate, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
