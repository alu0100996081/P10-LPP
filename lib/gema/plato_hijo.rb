
class Plato_hijo < Plato
	include Comparable	
	#funcion comparable
	def <=> (other)
		huella_nutricional <=> other.huella_nutricional 
	end	
#llama a ka funcion gases de alimentos
	def calc_gases
		return @alimentos.gases
	end
#llama a la funcion tierras de alimentos
	def calc_terreno
		return @alimentos.tierras
	end
#llama a la funcion energia de alimentos
	def calc_ener
		return @alimentos.energia
	end

	

end
