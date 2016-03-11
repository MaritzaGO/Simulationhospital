json.array!(@children_receivings) do |children_receiving|
  json.extract! children_receiving, :id
  json.url children_receiving_url(children_receiving, format: :json)
end
