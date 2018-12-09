require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |attribute,info|
    info.each do |info_type,names_list|
      names_list.each do |name|
         #binding.pry
        if data[attribute][info_type].include?(name)
          info_hash = {}
          pigeon_list[name] = info_hash
          info_hash[attribute] = [info.keys]
        end
      end
    end
  end
  
  return pigeon_list
end