get "/items" do |env|
  items =  Item.all.to_a

  hash = Hash(String, String).new
  items.each do |item|
    hash["#{item.id}"] = item.name
  end

  hash.to_json
end

post "/items" do |env|
  params = env.params.body["name"]
  if !params.nil? && params.size >= 3
    Item.create(name: params)
  else
    {
      message: "This function need 'name' to Item"
    }.to_json
  end

  rescue

  {
    message: "'name' can't be null"
  }.to_json
end