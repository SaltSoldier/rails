json.array!(@softs) do |soft|
  json.extract! soft, :id, :name, :price, :maker, :hard
  json.url soft_url(soft, format: :json)
end
