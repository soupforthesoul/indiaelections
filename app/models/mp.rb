class Mp < ActiveRecord::Base
  attr_accessible :age, :bio, :current, :id_parliament, :name, :party, :affidavit_2009, :state_2009, :constituency_2009, :mynetaid
  validates :name, :presence => true

	def self.import(file)
		spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
     # mp = find_by_name(row["name"]) || new
     mp=Mp.new
    mp.attributes = row.to_hash.slice(*accessible_attributes)
    mp.save!
  end




	 #  spreadsheet = open_spreadsheet(file)
	 #  # header = spreadsheet.row(1)
	 #  (4..spreadsheet.last_row).each do |i|
	 #  	if(spreadsheet.cell(i, 'A')== "2 - CONSTITUENCY DATA - SUMMARY")
	 #  		mp = Mp.new
	  		
	 #      mp.name=spreadsheet.cell(i+36, 'E')
	 #      mp.party=spreadsheet.cell(i+36, 'C')
	      
	 #    	# row = Hash[[header, spreadsheet.row(i)].transpose]
	 #   	 	# 	equipment = find_by_id(row["id"]) || new
	 #    	# equipment.attributes = row.to_hash.slice(*accessible_attributes)
	 #    	mp.save!
		# end	
	 #  end
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
	    all.each do |mp|
	      csv << mp.attributes.values_at(*column_names)
	    end
	  end
	end
end
