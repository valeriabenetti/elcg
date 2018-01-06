# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

Test.destroy_all

csv_text = File.read(Rails.root.join("test", "specimen.csv"))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  test = Test.new
  test.procedure_name = row["PROCEDURE NAME"]
  test.synonyms = row["SYNONYMS"]
  test.test_code = row["Test Code"]
  test.collection_instructions = row["COLLECTION INSTRUCTIONS"]
  test.process_intructions = row["PROCESS INSTRUCTIONS"]
  test.save
  puts "Test Saved"
end
