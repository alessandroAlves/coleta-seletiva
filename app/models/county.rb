class County < ActiveRecord::Base

	validates :name,
			  :code, 
			  :cnpj, 
              :presence => true

end
