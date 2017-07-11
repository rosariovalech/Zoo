class AnimalType < ApplicationRecord
	has_many :animals
	validates :nombre, presence: true  
	scope :changos, -> {where(nombre: "Chango")}

	def self.changos2
		where(nombre: "Chango")
	end
end
