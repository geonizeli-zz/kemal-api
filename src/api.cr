require "kemal"

module Api
  get "/" do
    "Hello World!"
  end
end

Kemal.run