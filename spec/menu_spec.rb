require 'gema/Alimentos.rb'
require 'gema/lista.rb'
require 'gema/plato.rb'
require 'gema/plato_hijo.rb'

RSpec.describe Plato do
	before :each do
		@a1 = Alimentos.new("Potaje",43,21,54,3,4)
		@a2 = Alimentos.new("Carne",23,23,54,6,3)
		@a3 = Alimentos.new("Helado",434,54,3,5,4)
	
                @a4 = Alimentos.new("Potaje",43,21,54,3,4)
		@a5 = Alimentos.new("Carne",23,23,54,6,3)
		@a6 = Alimentos.new("Helado",434,54,3,5,4) 

		@a7 = Alimentos.new("Potaje",43,21,54,3,4)
		@a8 = Alimentos.new("Carne",23,23,54,6,3)
		@a9 = Alimentos.new("Helado",434,54,3,5,4) 

		@dieta = List.new(nil,nil)
		@dieta.insert_tail(@a1)
		@dieta.insert_tail(@a2)
		@dieta.insert_tail(@a3)

		@cantidad = List.new(nil,nil)
		@cantidad.insert_tail(25)
		@cantidad.insert_tail(26)
		@cantidad.insert_tail(27)

		@plato = Plato.new("plato1",@dieta,@cantidad)
	

		 @dieta2 = List.new(nil,nil)
		 @dieta2.insert_tail(@a4)
		 @dieta2.insert_tail(@a5)
		 @dieta.insert_tail(@a6)
                 @cantidad2 = List.new(nil,nil)
		 @cantidad2.insert_tail(25)
		 @cantidad2.insert_tail(26)
		 @cantidad2.insert_tail(27)
		 
		 @plato2 = Plato.new("plato2",@dieta2,@cantidad2)

		  @dieta3 = List.new(nil,nil)
		  @dieta3.insert_tail(@a7)
		  @dieta3.insert_tail(@a8)
		  @dieta3.insert_tail(@a9)
		  
		  @cantidad3 = List.new(nil,nil)
		  @cantidad3.insert_tail(25)
		  @cantidad3.insert_tail(26)
		  @cantidad3.insert_tail(27)
		  
		  @plato3 = Plato.new("plato3",@dieta3,@cantidad3)

	end

	describe "Prueba Huella Nutricional" do
		it "Prueba funcion huella nutricional" do 
			expect(@plato.huella_nutricional).to eq(2.0)
		end

		


	end
end
