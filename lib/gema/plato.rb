

class Plato 
       attr_reader :nombre,:alimentos,:cantidades	

       def initialize(nombre,alimentos,cantidades)
		@nombre,@alimentos,@cantidades = nombre,alimentos,cantidades
	end

       def por_proteinas
		total_proteinas = @alimentos.get_proteinas
		total_nutrientes = @alimentos.get_nutrientes
		porcentaje_proteinas = (total_proteinas * 100) /total_nutrientes
		return porcentaje_proteinas
       end		

	def por_lipidos
	        total_lipidos = @alimentos.get_lipidos
	        total_nutrientes = @alimentos.get_nutrientes
	        porcentaje_lipidos = (total_lipidos * 100) /total_nutrientes
	        return porcentaje_lipidos
	end			    
end
