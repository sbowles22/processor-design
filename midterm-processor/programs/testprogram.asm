begin: // program lights up entire seven segment display, then takes values m and n from dipset switches 0 and 1, and turns off the corresponding segments of the display if BOTH dipswitches are on or off
  SET R1, 1       // turns segments' led on
  SET R2, 254     // 0xFE (HX7L REG ADDR)
  STORE R1, R2, 1 // 0xFF (HX7R REG ADDR)
button_loop:
  SET R2, 253     // 0xFD (BTNS REG ADDR)
  LOAD R1, R2, 0  // Load button data to R1
  BEQ R1, 1       // Jump past loop restart if button[0] is pressed
  SET R0, button_loop // Repeat loop if button not pressed
get_m_n_r0:
  SET R2, 247     // 0xF7 (DIP0 REG ADDR)
  LOAD R1, R2, 0  // Load m to R1
  LOAD R3, R2, 0  // Load r0 to R3
  SET R2, 248     // 0xF7 (DIP1 REG ADDR)
  LOAD R2, R2, 0  // Load n to R2
segments:
  EQ R4, R3, R2   // if r = n,
  SET R0, display
shift:
  SET R1, R2       
  SET R2, R3       
display:
  STORE R2, R1, 0 // Set HX7R to n iff n=m
  SET R0, button_loop
