class Alimentos
	include Comparable
	attr_reader :nombre, :proteinas, :chidratos, :lipidos, :gei, :terreno
	
	def initialize (nombre,proteinas,chidratos, lipidos,gei ,terreno)
		@nombre,@proteinas,@chidratos,@lipidos,@gei,@terreno = nombre, proteinas, chidratos, lipidos, gei, terreno
	end

	def get_nombre
		return @nombre
	end
	
	def get_proteinas
		return @proteinas
	end	
	
	def get_chidratos
		return @chidratos
	end

	def get_lipidos
		return @lipidos
	end

	def get_gei
		return @gei
	end

	def get_terreno
		return @terreno
	end

	def energia
		@ienergia = (@lipidos * 9) + (@proteinas * 4) + (@chidratos  * 4)
		return @ienergia
	end
	
	def <=> (other)
		energia <=> other.energia
	end
end	
