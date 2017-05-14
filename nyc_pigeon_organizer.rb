require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_hash = {}

  data.each do |trait, types|
    types.each do |type, pigeons|
      pigeons.each do |pigeon|

        pigeon_hash[pigeon] ||= {}
        pigeon_hash[pigeon][trait] ||= []
        pigeon_hash[pigeon][trait] << type.to_s

      end
    end
  end

  pigeon_hash

end
