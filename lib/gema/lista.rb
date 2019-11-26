Node = Struct.new(:value, :nest, :prev)

class List
	include Enumerable
	attr_reader :head, :tail

	def initialize(head, tail) 	
		@head = head
		@tail = tail
	end
	
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

	def vacio
		if(@tail==nil)
			return true
		else 
			return false
		end
	end	

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
	
    def each(&block)
	    puntero = @head
	    while(puntero!=nil) do
		    yield puntero.value
		    puntero = puntero.nest
	    end
    end
		   
end
