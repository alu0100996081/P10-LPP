Node = Struct.new(:value, :nest, :prev)

class List
	include Enumerable
	attr_reader :head, :tail

	def initialize(head, tail) 	
		@head = head
		@tail = tail
	end
	#inserta en la lista por la cola	
	def insert_tail(value)
		nodo = Node.new(value,nil,nil)
		if(@tail == nil)
			@tail = nodo
			@head = nodo
		else
			nodo.prev = @tail
			@tail.nest = nodo
	      		@tail = nodo
			nodo.nest = nil
		end 
	end
	#devuelve el valor de la cola
	def get_tail
		if(@tail == nil)
			puts "List Empty"
		else
			aux = @tail
			@tail = @tail.prev
			aux.prev = nil
			if(@tail!=nil)
				@tail.nest=nil
			end
		end	
		return aux
	end
	#inserta por la cabeza
	def insert_head(value)
		nodo = Node.new(value,nil,nil)
		if(@head == nil)
			@tail = nodo
			@head = nodo
		else
			nodo.nest = @head
			@head.prev = nodo
			@head = nodo
			nodo.prev = nil
		end
	end
	#devuelve el elemento de cabeza de la lista
	def get_head
		if(@head == nil)
			puts "List Empty"
		else
			aux = @head
			@head = @head.nest
			if(head!=nil)
				@head.prev = nil
			end
			aux.nest = nil
			if(@head == nil)
				@tail = nil
			end
		end
		return aux
	end
	#comprueba si la lista esta vacia
	def vacio
		if(@tail==nil)
			return true
		else 
			return false
		end
	end	
	#imprime la lista
	def to_s

        	puntero=@head
        	cadena='['
            if(@head!=nil)
                while (puntero!= nil) do
                    cadena+=puntero.value.to_s + ']'
                    if(puntero.nest!=nil)
                        puntero=puntero.nest
                        cadena+= '['
                    else
                        puntero=nil
                    end
                end
            end

	end
	#calcula los cases de los elementos d la lista
	def gases
 	    puntero=@head
       	    gases=0
            if(@head!=nil)
            	while(puntero!=nil) do
                	gases+=puntero.value.gei
                	if(puntero.nest!=nil)
                    		puntero=puntero.nest
                	else
                    		puntero=nil
                	end
            	end
            end
            return gases
         end

 #calcula los gases de la lista
    def tierras
        puntero=@head
        gases=0
        if(@head!=nil)
            while(puntero!=nil) do
                gases+=puntero.value.terreno
                if(puntero.nest!=nil)
                    puntero=puntero.nest
                else
                    puntero=nil
                end
            end
        end
        return gases
    end
	#calcula la energia total de los elementos  de la lista
    def energia
        puntero=@head
        energia=0
        if(@head!=nil)
            while(puntero!=nil) do
                energia+=puntero.value.energia
                if(puntero.nest!=nil)
                    puntero=puntero.nest
                else
                    puntero=nil
                end
            end
        end
        return energia
    end
	#devuleve el total de proteinas de la lista
    def get_proteinas
	puntero=@head
	total_proteinas=0
	if(@head!=nil)
	     while(puntero!=nil) do
	           total_proteinas+=puntero.value.proteinas
	           if(puntero.nest!=nil)
	                puntero=puntero.nest
	           else
	                puntero=nil
	           end
	     end
	end
	return total_proteinas
    end	    
	#devuelve el total de nutrientes
     def get_nutrientes
	 puntero=@head
	 total_nutrientes=0
	 if(@head!=nil)
		 while(puntero!=nil) do
			 total_nutrientes+=puntero.value.proteinas + puntero.value.chidratos + puntero.value.lipidos
			 if(puntero.nest!=nil) 
				 puntero=puntero.nest
			 else
				 puntero=nil
			 end
		 end
	 end
	 return total_nutrientes
     end
#devuelve el total de lipidos
     def get_lipidos
	     puntero=@head
	     total_lipidos=0
	     if(@head!=nil)
		   while(puntero!=nil) do
		        total_lipidos+=puntero.value.lipidos
			if(puntero.nest!=nil)
			   puntero=puntero.nest
			else
			    puntero=nil
			end
		    end
	      end
	 return total_lipidos
      end
#devuelve el total de hidratos
      def get_chidratos
          puntero=@head
          total_chidratos=0
          if(@head!=nil)
             while(puntero!=nil) do
                  total_chidratos+=puntero.value.chidratos
                  if(puntero.nest!=nil)
                      puntero=puntero.nest
                  else
                      puntero=nil
                  end
              end
         end
        return total_chidratos
     end  
#metodo enumerable
    def each(&block)
	    puntero = @head
	    while(puntero!=nil) do
		    yield puntero.value
		    puntero = puntero.nest
	    end
    end
		   
end
