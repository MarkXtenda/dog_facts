require 'bundler/setup'

Bundler.require

require 'rake'
require 'active_record'


ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/facts.db"
)

ActiveRecord::Base.logger = nil
require_all 'app'