begin: // program takes m, n from dip set 0, 1 and displays gcd(m, n) on 7-segment display as hex by euclid's algo after pushing button 0
  SET R1, 0       // 0, the value to be stored in both halves of the hex display
  SET R2, 254     // 0xFE (HX7L REG ADDR)
  STORE R1, R2, 0
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
find_remainder:
  LT R4, R3, R2   // if r < n,
  BEQ R4, 1       // jump to step 2 of algo, else, skip line to try to find remainder by subtracting n
  SET R0, equiv_test
  SUB R3, R3, R2  // r -= n
  SET R0, find_remainder // check remainder again
equiv_test:
  BEQ R3, 0       // algo terminates when r = 0
  SET R0, display
shift:
  SET R1, 0       // m <- n in this is m = 0; m += n;
  ADD R1, R1, R2 
  SET R2, 0       // n <- r 
  ADD R2, R2, R3
  SET R0, find_remainder // go back to step 1 
display:
  SET R1, 255     // 0xFF (HX7R REG ADDR)
  STORE R2, R1, 0 // Set HX7R to n, the gcf
  SET R0, button_loop