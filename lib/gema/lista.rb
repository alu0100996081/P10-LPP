Node = Struct.new(:value, :nest, :prev)

class List

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

		   
end
