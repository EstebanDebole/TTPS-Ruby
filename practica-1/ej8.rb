[:upcase, :downcase, :capitalize, :swapcase].map do |meth| 
	p "TTPS Ruby".send(meth)
end
# Lo que realiza este metodo la modificacion del string a todo mayuscula, todo minisucula, primer letra mayuscula y swapear la palabra 