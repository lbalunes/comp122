class whole2bin {
   static MIPS_OS_Interface mips = new MIPS_OS_Interface();

   static void whole2bin(int number) {

        
      int count = 0; 
      int n = number;
      int b = 2;
      int r = 0;


      spot:    for (; n != 0 ;) {
      body:       ;
                  r = n % b;
                  n = n / b;
                  mips.push(r);
                  count = count + 1;  
                  continue spot;
               }

      rover:   ;
      apple:   for(; count > 0 ;) {

                  r = mips.pop();
                  mips.print_d(r);
                  count = count - 1;
                  continue apple;
               }

      core:    ;
                
               


      return;
               

   }         



 public static void main(String[] args){
     // This method has been written as a driver to test
     // your strlen.  You do NOT need to modify this method
     // Focus your attention to the `strlen` method.

     int arg_0;

     arg_0  = Integer.parseInt(args[0]);
     whole2bin(arg_0);
     return;
  }
}