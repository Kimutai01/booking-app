json.extract! bus, :id, :registration, :capacity, :from, :to, :departing_time, :date, :created_at, :updated_at
json.url bus_url(bus, format: :json)
