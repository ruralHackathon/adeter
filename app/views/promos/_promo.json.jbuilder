json.extract! promo, :id, :titulo, :texto, :validez, :created_at, :updated_at
json.url promo_url(promo, format: :json)
