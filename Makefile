all:
	alex Lexer.x && happy Parser.y 
	
clean: 
	rm -f **/*.hi **/*.o 