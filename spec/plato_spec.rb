require 'gema/Alimentos.rb'
require 'gema/lista.rb'
require 'gema/plato.rb'
require 'gema/plato_hijo.rb'

RSpec.describe Plato do
	        before :each do
			#Alimentos dieta espanola
			@a1 = Alimentos.new("sopa" ,20,40,40,24,20)
			@a2 = Alimentos.new("carne",15,35,50,31,37)
			@a3 = Alimentos.new("yogur",25,45,30,56,12)

			#Alimentos dietra vvasca
			@a4 = Alimentos.new("potaje"  ,20,65,15,65,42)
			@a5 = Alimentos.new("pescado" ,15,60,25,34,81)
			@a6 = Alimentos.new("natillas",10,55,35,13,63)

			#Alimentos dieta vegetaria
			@a7 = Alimentos.new("gazpacho",20,40,40,34,10)
			@a8 = Alimentos.new("huevos"  ,15,35,50,32,29)
			@a9 = Alimentos.new("batido"  ,25,45,30,21,14)
			
			#Alimentos dieta vegetaliana
			@a10= Alimentos.new("potaje"  ,15,35,50,12,31)
			@a11= Alimentos.new("ensalada",20,40,40,32,15)
			@a12= Alimentos.new("fruta"   ,25,45,30,21,20)

			#Alimentos dieta animal
			@a13= Alimentos.new("cocido",30,30,40,54,52)
			@a14= Alimentos.new("filete",30,20,50,65,77)
			@a15= Alimentos.new("batido",30,60,20,21,61)
			
			#Dietas
		        @dieta_espanola    = List.new(nil,nil)
		        @dieta_vasca       = List.new(nil,nil)
		        @dieta_vegetaria   = List.new(nil,nil)
		        @dieta_vegetaliana = List.new(nil,nil)
			@dieta_animal      = List.new(nil,nil)
			
			@dieta_espanola.insert_tail(@a1)
			@dieta_espanola.insert_tail(@a2)
			@dieta_espanola.insert_tail(@a3)

			@dieta_vasca.insert_tail(@a4)
			@dieta_vasca.insert_tail(@a5)
			@dieta_vasca.insert_tail(@a6)

			@dieta_vegetaria.insert_tail(@a7)
			@dieta_vegetaria.insert_tail(@a8)
			@dieta_vegetaria.insert_tail(@a9)

			@dieta_vegetaliana.insert_tail(@a10)
			@dieta_vegetaliana.insert_tail(@a11)
			@dieta_vegetaliana.insert_tail(@a12)

			@dieta_animal.insert_tail(@a13)
			@dieta_animal.insert_tail(@a14)
			@dieta_animal.insert_tail(@a15)

			@cantidad_espanola = List.new(nil,nil)
			@cantidad_vasca = List.new(nil,nil) 
			@cantidad_vegetaria = List.new(nil,nil) 
			@cantidad_vegetaliana = List.new(nil,nil)
			@cantidad_animal = List.new(nil,nil) 

			@cantidad_espanola.insert_tail(25)
			@cantidad_espanola.insert_tail(25)
			@cantidad_espanola.insert_tail(25)
			
			@cantidad_vasca.insert_tail(20)
			@cantidad_vasca.insert_tail(20)
			@cantidad_vasca.insert_tail(20)

			@cantidad_vegetaria.insert_tail(30)
			@cantidad_vegetaria.insert_tail(30)
			@cantidad_vegetaria.insert_tail(30)

			@cantidad_vegetaliana.insert_tail(40)
			@cantidad_vegetaliana.insert_tail(40)
			@cantidad_vegetaliana.insert_tail(40)

			@cantidad_animal.insert_tail(25)
			@cantidad_animal.insert_tail(25)
			@cantidad_animal.insert_tail(25)
						 
			@plato_espanol = Plato.new("Espanol",@dieta_espanola, @cantidad_espanola)
			@plato_vasca = Plato.new("Vasco",@dieta_vasca, @cantidad_vasca)
			@plato_vegetaria = Plato.new("Vegetaria",@dieta_vegetaria, @cantidad_vegetaria)
			@plato_vegetaliana = Plato.new("Vegetaliana",@dieta_vegetaliana, @cantidad_vegetaliana)
			@plato_animal = Plato.new("Animal",@dieta_animal, @cantidad_animal)
		
			@plato_hijo1 = Plato_hijo.new("Espa",@dieta_espanola,@cantidad_espanola)
			@plato_hijo2 = Plato_hijo.new("Vasc",@dieta_vasca,@cantidad_vasca)
			@plato_hijo3 = Plato_hijo.new("animal",@dieta_animal,@cantidad_animal)
		end
		
		describe "Prueba Plato" do
				
			it "Nombre" do
				  expect(@plato_espanol.nombre).to eq("Espanol")
			end	  

				
			it "Plato tiene Alimento" do
				expect(@plato_espanol.alimentos).to eq(@dieta_espanola)
			end
 
		        it "Plato tiene cantidades" do
				expect(@plato_espanol.cantidades).to eq(@cantidad_espanola)
			end

			it "Plato calcula porcentaje proteinas" do
				expect(@plato_espanol.por_proteinas).to eq(20)
			end	

			it "Plato calcula porcentaje lipidos" do 
				expect(@plato_espanol.por_lipidos).to eq(40)
			end

			it "Plato calcula porcentaje carbohidratos" do
				expect(@plato_espanol.por_chidratos).to eq(40)
			end
		end

		describe "Pruebas de clase" do
			it "@plato pertenece a plato" do
				expect(@plato_espanol.class).to eq(Plato)
			end

			it "@plato instancia de la clase plato" do
				expect(@plato_espanol.instance_of? Plato).to eq(true)
			end
		
			it "@plato es un objeto de la clase plato" do 
				expect(@plato_espanol.is_a? Plato).to eq(true)
			end
		end	

		describe "Pruebas de clase Plato hijo " do
			it "prueba  <  plato hijo" do
				expect(@plato_hijo1 < @plato_hijo2).to eq(false)
			end
			
			it "prueba > plato hijo" do
				expect(@plato_hijo1 > @plato_hijo2).to eq(true)
			end

			it "prueba <= plato hijo" do 
				expect(@plato_hijo1 <= @plato_hijo2).to eq(false)
			end

			it "prueba >= plato hijo"do 
				expect(@plato_hijo1 >= @plato_hijo2).to eq(true)
			end

			it "prueba == plato hijo" do
				expect(@plato_hijo1 == @plato_hijo2).to eq(false)	
			end

			it "prueba between plato hijo"do
				expect(@plato_hijo1.between?(@plato_hijo2,@plato_hijo3)).to eq(true)
			end

			it "Prueba clamp"do
				expect(@plato_hijo1.por_proteinas.clamp(0,100)).to eq(20)	
			end

		end	
end

