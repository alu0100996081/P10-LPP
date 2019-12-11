class Alimentos
	include Comparable
	attr_reader :nombre, :proteinas, :chidratos, :lipidos, :gei, :terreno
	
	def initialize (nombre,proteinas,chidratos, lipidos,gei ,terreno)
		@nombre,@proteinas,@chidratos,@lipidos,@gei,@terreno = nombre, proteinas, chidratos, lipidos, gei, terreno
	end

	#Devuelve el nombre del alimento
	def get_nombre
		return @nombre
	end
	#Devuelve las proteinas
	def get_proteinas
		return @proteinas
	end	
	#devuelve los hidratos
	def get_chidratos
		return @chidratos
	end
	#devuelve los lipidos
	def get_lipidos
		return @lipidos
	end
	#devuelve los gases
	def get_gei
		return @gei
	end
	#devuelve el terreno
	def get_terreno
		return @terreno
	end
	#calcula la energia 
	def energia
		@ienergia = (@lipidos * 9) + (@proteinas * 4) + (@chidratos  * 4)
		return @ienergia
	end
	#metodo comparable
	def <=> (other)
		energia <=> other.energia
	end
end	
