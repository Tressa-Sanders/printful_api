module PrintfulAPI

	class SyncVariant < APIResource
		include PrintfulAPI::APIOperations::Get

                api_attributes :id, :external_id, :sync_product_id, :name, :synced, :variant_id, :retail_price, :currency, :product, :files, :options, :sync_product, :sync_variants
    
		belongs_to :store_product, class: 'PrintfulAPI::StoreProduct', :inverse_of => :sync_variants
		
		has_many :files, class: 'PrintfulAPI::File', :inverse_of => :sync_variant

		def self.resource_path
		 '/store/products'
		end
		
		#def load_data( data )
		# if data['product'].present?
		#   super(data['product'])
		# else
		#   super( data )
		# end
		#end
		
	end

end
