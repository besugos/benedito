json.extract! request, :id, :name, :birthdate, :reason, :city, :state, :country, :created_at, :updated_at
json.url request_url(request, format: :json)
