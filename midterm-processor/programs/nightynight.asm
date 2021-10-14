begin: 
	SET R1 253 //reg address button 
	STORE R1, R1, 0
	BEQ R1, 1
	SET R0, begin
		
lightLED:
	SET R2, 250 //reg address led[0]
	SET R3, 251 //reg address led[1]
	SET R4, 252 //reg address led[2] 
	STORE R2, R1, 0 
	STORE R3, R1, 0
	STORE R4, R1, 0
	SET R0, begin
	
	 
