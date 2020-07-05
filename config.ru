require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride #needed to use this middleware and process PATCH, PUT and DELETE requests

use CharacterController
# use QuotesController
run ApplicationController
