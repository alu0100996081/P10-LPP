require 'gema/Alimentos.rb'
require 'gema/lista'

RSpec.describe Alimentos do 
	before :each do

        	@nodo1 = Node.new(1,nil,nil)
        	@nodo2 = Node.new(2,nil,nil)
        	@lista = List.new(nil,nil)

       		#Alimentos dieta espanola
        	@a1 = Alimentos.new("sopa" ,20,40,40,24,20)
        	@a2 = Alimentos.new("carne",15,35,50,31,37)
        	@a3 = Alimentos.new("yogur",25,45,30,56,12)
        
        	#Alimentos dieta vasca
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

    	end

	describe "Pruebas Lista" do
		it "Insertar Por Cola" do 
			@lista.insert_tail(1)
			expect(@lista.tail.value).to eq(1)
		end

		it "Extraer por Cola" do
			@lista.insert_head(1)
			@lista.insert_head(2)
			@lista.get_tail
			expect(@lista.tail.value).to eq(2)
		end	

		it "Insertar Por Cabeza" do
			@lista.insert_head(1)
			expect(@lista.head.value).to eq(1)
		end	

		it "Extraer Por Cabeza" do
			@lista.insert_head(1)
			@lista.insert_head(2)	
			@lista.get_head
			expect(@lista.head.value).to eq(1)
		end

		it "Lista Vacia" do
			@lista.insert_tail(2)
			@lista.get_tail
			expect(@lista.vacio).to be(true)
		end

		it "Imprimir" do
			@lista.insert_tail(1)
			@lista.insert_tail(2)
			@lista.insert_tail(3)
			expect(@lista.to_s)=="[1][2][3]"
		end
	end

	describe "Pruebas menu" do

        it "Gases diarios" do

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

            expect(@dieta_espanola.gases).to eq(111)
            expect(@dieta_vasca.gases).to eq(112)
            expect(@dieta_vegetaria.gases).to eq(87)
            expect(@dieta_vegetaliana.gases).to eq(65)
            expect(@dieta_animal.gases).to eq(140)
        end

        
        it "Gases anuales" do

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

            expect(@dieta_espanola.gases*365).to eq(40515)
            expect(@dieta_vasca.gases*365).to eq(40880)
            expect(@dieta_vegetaria.gases*365).to eq(31755)
            expect(@dieta_vegetaliana.gases*365).to eq(23725)
            expect(@dieta_animal.gases*365).to eq(51100)
        end

        it "Metros cuadrados dieta espanola" do

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

            expect(@dieta_espanola.tierras).to eq(69)
            expect(@dieta_vasca.tierras).to eq(186)
            expect(@dieta_vegetaria.tierras).to eq(53)
            expect(@dieta_vegetaliana.tierras).to eq(66)
            expect(@dieta_animal.tierras).to eq(190)
        end
    end
	describe "Prueba comparable alimentos" do
		it "Prueba >" do
			expect(@a1>@a2).to eq(false)
		end
		
		it "Prueba <" do
                        expect(@a1<@a2).to eq(true)
                end

 		it "Prueba >=" do
                        expect(@a1>=@a2).to eq(false)
                end

 		it "Prueba <=" do
                        expect(@a1<=@a2).to eq(true)
                end

  		it "Prueba ==" do
                        expect(@a1==@a2).to eq(false)
                end

		it "Prueba between" do
			expect(@a1.between?(@a2,@a3)).to eq(false)
                end

  		it "Prueba clamp" do
			expect(@a1.energia.clamp(0,20)).to eq(20)
                end
	end	

	describe "Prueba enumerable lista" do
		it "Prueba min" do 
			@lista.insert_tail(@a1)
			@lista.insert_tail(@a2)
			@lista.insert_tail(@a3)

			expect(@lista.min).to eq(@a3)
		end

		it "Prueba max" do
                        @lista.insert_tail(@a1)
                        @lista.insert_tail(@a2)
                        @lista.insert_tail(@a3)
   
                        expect(@lista.max).to eq(@a2)
                end

		it "Prueba sort" do
                        @lista.insert_tail(@a1)
                        @lista.insert_tail(@a2)
                        @lista.insert_tail(@a3)

                        expect(@lista.sort).to eq([@a3,@a1,@a2])
                end

		 it "Prueba select" do
                        @lista.insert_tail(@a1)
                        @lista.insert_tail(@a2)
                        @lista.insert_tail(@a3)

			expect(@lista.select{|i| i.nombre == "sopa"}).to eq([@a1])
                end
		
		it "Prueba collect" do
                        @lista.insert_tail(@a1)
                        @lista.insert_tail(@a2)
                        @lista.insert_tail(@a3)

                        expect(@lista.collect{|i| @a1}).to eq([@a1,@a1,@a1])
                end


	end	
end
