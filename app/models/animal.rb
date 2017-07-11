class Animal < ApplicationRecord
	belongs_to :animal_type
	scope :tipo, ->(tipo) {where(animal_type: AnimalType.find_by(nombre: tipo))}

	scope :ultimos, -> {last(5)}

	def self.tipo2(tipo)
		AnimalType.find_by(nombre: tipo).animals
	end

	def self.ultimos_5
		last(5)	
	end
end
