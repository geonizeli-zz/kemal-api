get "/items" do |env|
  items =  Item.all.to_a

  hash = Hash(String, String).new
  items.each do |item|
    hash["#{item.id}"] = item.name
  end

  hash.to_json
end
