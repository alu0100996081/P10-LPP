

class Plato 
       attr_reader :nombre,:alimentos,:cantidades	

       def initialize(nombre,alimentos,cantidades)
		@nombre,@alimentos,@cantidades = nombre,alimentos,cantidades
	end
#devuelve el porcentaje de proteinas del plato
       def por_proteinas
		total_proteinas = @alimentos.get_proteinas
		total_nutrientes = @alimentos.get_nutrientes
		porcentaje_proteinas = (total_proteinas * 100) /total_nutrientes
		return porcentaje_proteinas
       end		
#devuleve el porcentaje de lipidos del plato
	def por_lipidos
	        total_lipidos = @alimentos.get_lipidos
	        total_nutrientes = @alimentos.get_nutrientes
	        porcentaje_lipidos = (total_lipidos * 100) /total_nutrientes
	        return porcentaje_lipidos
	end	
#devuelve el porcentaje de hidratos
	 def por_chidratos
	      total_chidratos = @alimentos.get_chidratos
	      total_nutrientes = @alimentos.get_nutrientes
	      porcentaje_chidratos = (total_chidratos * 100) /total_nutrientes
	      return porcentaje_chidratos
	 end
	#devuelve el indice de la huella nutricional de cada plato
	 def huella_nutricional
		if @alimentos.energia <= 670  
			@huella_energia = 1.0
		elsif @alimentos.energia > 670 and @alimentos.energia <= 830
			@huella_energia = 2.0
		else	
			@huella_energia = 3.0
		end	

		if @alimentos.gases <= 800
		        @huella_carbo = 1.0
		elsif @alimentos.gases > 800 and @alimentos.gases <= 1200
			@huella_carbo = 2.0 
		else
			@huella_carbo = 3.0
		end	
				
		return (@huella_energia + @huella_carbo)/2	
	 end	 
end
