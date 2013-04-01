class Constituency < ActiveRecord::Base
  attr_accessible :female, :identifier, :male, :name, :number, :poll_percent, :runner_up, :runner_up_party, :state, :total_electors, :winner, :winner_party

validates :name, :presence => true

def self.import(file)
  spreadsheet = open_spreadsheet(file)
  # header = spreadsheet.row(1)
  (4..spreadsheet.last_row).each do |i|
  	if(spreadsheet.cell(i, 'A')== "2 - CONSTITUENCY DATA - SUMMARY")
  		constituency = Constituency.new
  		constituency.name=spreadsheet.cell(i+4, 'B')
      constituency.male=spreadsheet.cell(i+15, 'E')
      constituency.female=spreadsheet.cell(i+15, 'F')
      constituency.identifier=spreadsheet.cell(i+3, 'F') #spreadsheet.cell(i+2, 'F')+ ":" + 
      constituency.number=spreadsheet.cell(i+10, 'G')  #This is number of candidates that contested
      constituency.state=spreadsheet.cell(i+2, 'F')
      constituency.total_electors=spreadsheet.cell(i+15, 'G')
      constituency.poll_percent=spreadsheet.cell(i+21, 'D')
      constituency.winner=spreadsheet.cell(i+36, 'E')
      constituency.winner_party=spreadsheet.cell(i+36, 'C')
      constituency.runner_up=spreadsheet.cell(i+37, 'E')
      constituency.runner_up_party=spreadsheet.cell(i+37, 'C')
    	# row = Hash[[header, spreadsheet.row(i)].transpose]
   	 	# 	equipment = find_by_id(row["id"]) || new
    	# equipment.attributes = row.to_hash.slice(*accessible_attributes)
    	constituency.save!
	end	
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
  when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |constituency|
      csv << constituency.attributes.values_at(*column_names)
    end
  end
end


end
