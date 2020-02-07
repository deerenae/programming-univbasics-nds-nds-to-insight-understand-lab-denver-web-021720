require 'yaml'
require 'pry'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
  
  
end

row_index = 0 
  while row_index < 1 do 
  
      p "#{directors_database[row_index][:movies][:title]}"
    
  row_index += 1   
  
  end  

#pp directors_database

