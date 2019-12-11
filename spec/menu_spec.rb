require 'gema/Alimentos.rb'
require 'gema/lista.rb'
require 'gema/plato.rb'
require 'gema/plato_hijo.rb'

RSpec.describe Plato do
	before :each do
		@a1 = Alimentos.new("Potaje",20,40,40,24,20)
		@a2 = Alimentos.new("Carne",15,35,50,31,37)
		@a3 = Alimentos.new("Helado",25,45,30,56,12)
	
                @a4 = Alimentos.new("Sopa",20,65,15,65,42)
		@a5 = Alimentos.new("huevos",15,66,25,34,81)
		@a6 = Alimentos.new("yogurt",10,55,35,13,63) 

		@a7 = Alimentos.new("cocido",20,40,40,32,10)
		@a8 = Alimentos.new("gazpacho",15,35,50,12,31)
		@a9 = Alimentos.new("natilla",30,60,20,21,61) 

		@dieta = List.new(nil,nil)
		@dieta.insert_tail(@a1)
		@dieta.insert_tail(@a2)
		@dieta.insert_tail(@a3)

		@cantidad = List.new(nil,nil)
		@cantidad.insert_tail(25)
		@cantidad.insert_tail(26)
		@cantidad.insert_tail(27)

		@plato = Plato.new("plato1",@dieta,@cantidad)
		@plato_hijo = Plato_hijo.new("phijo",@dieta,@cantidad)

		 @dieta2 = List.new(nil,nil)
		 @dieta2.insert_tail(@a4)
		 @dieta2.insert_tail(@a5)
		 @dieta.insert_tail(@a6)
                 @cantidad2 = List.new(nil,nil)
		 @cantidad2.insert_tail(25)
		 @cantidad2.insert_tail(26)
		 @cantidad2.insert_tail(27)
		 
		 @plato2 = Plato.new("plato2",@dieta2,@cantidad2)
		 @plato_hijo2 = Plato_hijo.new("phijo2",@dieta2,@cantidad2)

		  @dieta3 = List.new(nil,nil)
		  @dieta3.insert_tail(@a7)
		  @dieta3.insert_tail(@a8)
		  @dieta3.insert_tail(@a9)
		  
		  @cantidad3 = List.new(nil,nil)
		  @cantidad3.insert_tail(25)
		  @cantidad3.insert_tail(26)
		  @cantidad3.insert_tail(27)
		  
		 @plato3 = Plato.new("plato3",@dieta3,@cantidad3)
		 @plato_hijo3 = Plato_hijo.new("phijo3",@dieta3,@cantidad3)
	end

	describe "Prueba Huella Nutricional" do
		it "funcion huella nutricional" do 
			expect(@plato_hijo.huella_nutricional).to eq(2.0)
		end


		it "Plato maxima huella" do
			array_menu = []
			array_menu << @plato_hijo
			array_menu << @plato_hijo2
			array_menu << @plato_hijo3
			expect(array_menu.max).to eq(@plato_hijo2)
		end
		
		it "Incrementa Precio" do


		end

	end
end
