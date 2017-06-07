# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

Test.destroy_all

csv_text = File.read(Rails.root.join("test", "eaps.csv"))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  test = Test.new
  test.procedure_identifier = row["PROCEDURE Identifier"]
  test.procedure_name = row["PROCEDURE NAME"]
  test.procedure_master_number = row["PROCEDURE MASTER NUMBER"]
  test.synonyms = row["SYNONYMS"]
  test.test_code = row["Test Code"]
  test.category_code = row["CATEGORY CODE"]
  test.category_name = row["CATEGORY NAME"]
  test.eppicare_inactive_flag = row["EPICCARE INACTIVE FLAG"]
  test.orderable = row["ORDERABLE?"]
  test.collection_identifier = row["COLLECTION Identifier"]
  test.collection_name = row["COLLECTION NAME"]
  test.collection_instructions = row["COLLECTION INSTRUCTIONS"]
  test.process_identifier = row["PROCESS Identifier"]
  test.process_name = row["PROCESS NAME"]
  test.process_intructions = row["PROCESS INSTRUCTIONS"]
  test.save
  puts "Test Saved"
end


Admin.create email: 'vbenetti46@gmail.com', password: 'insecure-password'
