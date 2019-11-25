require 'gema/Alimentos.rb'

RSpec.describe Alimentos do
	before :each do
		@a = Alimentos.new("pollo",30,41,100,0,7.1)
		@a2 = Alimentos.new("cerveza",4,39,100,7.6,11.0)
		@a3 = Alimentos.new("cerdo",20,76,40,0,0.22)
		@a4 = Alimentos.new("lentejas",20,239,50,2,8.9)
		@a5 = Alimentos.new("yogurt",6,39,20,0.4,3.4)
		@a6 = Alimentos.new("camrones",15,76,10,1,1)

	end

	describe "Alimentos Prueba" do
		it "Nombre" do 
			expect(@a.nombre).to eq("pollo")
		end
		
		it "CarboHidratos" do
			expect(@a.chidratos).to eq(41)
		end
		
		it  "Lipidos" do
			expect(@a.lipidos).to eq(100)
		end
		
		it "GEI" do 
			expect(@a.gei).to eq(0)
		end

		it "Terreno" do
			expect(@a.terreno).to eq(7.1)
		end

		it "Ingesta Energia Hombre" do
			expect(@a.energia+@a2.energia+@a3.energia).to eq(3000)
		end

		it "Ingesta Energia Mujer" do
			expect(@a4.energia+@a5.energia+@a6.energia).to eq(2300)
		end
		
		it "Ingesta Proteinas Hombre" do
			expect(@a.proteinas+@a2.proteinas+@a3.proteinas).to eq(54)
		end
		
		it "Ingesta Proteinas Mujer" do
			expect(@a4.proteinas+@a5.proteinas+@a6.proteinas).to eq(41)
		end	
	end		

end
