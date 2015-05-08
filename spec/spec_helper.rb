require('clients')
require('stylists')
require('rspec')
require('pry')
require('pg')
require('patrons')

DB = PG.connect({:dbname => 'hair_salon_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM clients *;")
    DB.exec("DELETE FROM stylists *;")
  end
end