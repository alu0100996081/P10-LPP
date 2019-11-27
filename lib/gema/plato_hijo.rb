
class Plato_hijo < Plato
	include Comparable
	
	def <=> (other)
		por_proteinas <=> other.por_proteinas 
	end	

	def calc_gases
		return @alimentos.gases
	end

	def calc_terreno
		return @alimentos.tierras
	end

	def calc_ener
		return @alimentos.energia
	end

	

end
