require "kemal"
require "jennifer"
require "jennifer/adapter/postgres"

require "./controllers/**"
require "./models/**"
require "./views/**"
require "../config/*"

Kemal.run
