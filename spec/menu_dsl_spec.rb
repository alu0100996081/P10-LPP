require "gema/MenuDsl.rb"


RSpec.describe MenuDsl do

	describe "carga Correctamente" do
		it "ejemplo de carga" do
			menu = MenuDsl.new("Lunes") do
				name = "test"
				desayuno :descripcion => "tarta",
					:porcion => "1 porcion",
					:gramos => 100.0,
					:grasas => 32.2,
					:carbohidratos => 54.2,
					:proteinas => 11.0,
					:fibra => 2.3,
					:sal =>  0.06
			end

			puts menu.to_s
		end
	end
end
