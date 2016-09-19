json.extract! shipper, :id, :name, :handle, :contact, :telephone, :fax, :location, :broker_mc, :carrier_mc, :dot_number, :created_at, :updated_at
json.url shipper_url(shipper, format: :json)