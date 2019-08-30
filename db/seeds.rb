# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.allow_production = true
DatabaseCleaner.allow_remote_database_url = true
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

Question.delete_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'reserved_words.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  q = Question.new
  q.word = row['word']
  q.taboo1 = row['taboo1']
  q.taboo2 = row['taboo2']
  q.taboo3 = row['taboo3']
  q.taboo4 = row['taboo4']
  q.save
end
