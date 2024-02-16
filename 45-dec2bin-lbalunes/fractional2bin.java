class fractional2bin {
       static MIPS_OS_Interface mips = new MIPS_OS_Interface();
     
       static void fractional2bin(int fractional, 
                                  int precision, 
                                  int max_size) {

          int max = 0;
          int n = 0;
          int count = 0;
          int loop_max = max_size;

          max = (int) Math.pow(10, precision);
          n = fractional;               // the fractional
          count = 0;
  
  dog:     for(; count < loop_max ;) {
              n = n * 2;
              if (n == 0) break;
              if ( n >= max ) {
  cons:          ;  
                 mips.print_ci('1');
                 n = n - max; 
                 //gotto fi
               } else {
  alt:             ;
                    mips.print_ci('0');
                    // goto fi
               }
  fi:          ;
               count++;
               continue dog;
            }
  cat:      ;   
  
     
          }
     
       public static void main(String[] args){
         final int mantissa_size = 23;  
         // This is the number of bits in a binary32 mantissa
      
         int arg_0 = Integer.parseInt(args[0]);
         char arg_1 = (args[1]).charAt(0);
         int arg_2 = Integer.parseInt(args[2]);
         int precision = args[2].length();
      
         //dec2bin(arg_0);
         // mips.printc(arg_1);
         fractional2bin(arg_2, precision, mantissa_size);
         mips.print_ci('\n');
         return;
       } 
     }