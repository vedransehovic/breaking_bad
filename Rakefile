ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "Starting binding.pry"
task :console do
    Pry.start
end

desc "populating character_id column"
task :char_id_create do
    @quotes=Quote.all
    @characters=Character.all
    Quote.all.each do |quote|
        char_id = @characters.find_by(name: quote.author).id
        quote.character_id = char_id
        quote.save
    end
end