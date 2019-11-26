
class Plato_hijo < Plato
	include Comparable,Enumerable
	
	def <=> (other)
		por_proteinas <=> other.por_proteinas 
	end	



end
