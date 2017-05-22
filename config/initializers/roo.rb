require 'roo'

xlsx = Roo::Spreadsheet.open(:file)
xlsx = Roo::Excelx.new(:file)

# Use the extension option if the extension is ambiguous.
xlsx = Roo::Spreadsheet.open('./rails_temp_upload', extension: :xlsx)

xlsx.info
# => Returns basic info about the spreadsheet file
