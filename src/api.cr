require "kemal"
require "json"

module Api
  before_get do |env|
    puts "Receiving a GET"
    env.response.content_type = "application/json"
  end

  get "/" do
    {
      "framework": "Kemal",
      "language": "Crystal",
      "message": "Hello, World!"
    }.to_json
  end
end

Kemal.run