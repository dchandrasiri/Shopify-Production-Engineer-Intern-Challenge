class Inventory < ApplicationRecord
    def self.to_csv
        attributes = %w{item SKU}
        CSV.generate(headers: true) do |csv|
            csv << attributes
            all.each do |inventory|
                csv << inventory.attributes.values_at(*attributes)
   
            end 
        end
    end        
end
