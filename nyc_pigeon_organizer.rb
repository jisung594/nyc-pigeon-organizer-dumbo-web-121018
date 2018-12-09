require 'pry'

# def nyc_pigeon_organizer(data)
#   pigeon_list = {}
  
#   data.each do |attribute,info|
#     info.each do |info_type,names_list|
#       names_list.each do |name|
#         data[attribute][info_type].each do |name|
#           pigeon_list[name] = {:color => data[:color].keys}
#           # info_hash = {}
#           # pigeon_list[name] = info_hash
#           # info_hash[attribute] = info.keys
#           binding.pry
#         end
#       end
#     end
#   end
  
#   return pigeon_list
# end



def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |info_type,info_hash|
    info_hash.each do |spec,names_arr|
      names_arr.each do |name|
          if pigeon_list[name] == nil   # if there is no key called "name"
            pigeon_list[name] = {}      # create a key,val pair wtih 
            pigeon_list[name][info_type] = []
          elsif pigeon_list[name][info_type] == nil
            pigeon_list[name][info_type] = []
          #binding.pry
          end
          pigeon_list[name][info_type] << spec.to_s
      end
    end
  end
  
  # binding.pry
  return pigeon_list
end












