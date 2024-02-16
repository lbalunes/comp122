class dec2bin {
   static MIPS_OS_Interface mips = new MIPS_OS_Interface();

   static whole2bin whol = new whole2bin();

   static fractional2bin frac = new fractional2bin();

   
   static void dec2bin( int whole,
                        char radix,
                        int fractional,
                        int precision) {

         whol.whole2bin(whole);
         mips.print_ci('.');
         frac.fractional2bin(fractional, precision, 23);
         mips.print_ci('\n');
         return;

   }         



 public static void main(String[] args){
     // This method has been written as a driver to test
     // your strlen.  You do NOT need to modify this method
     // Focus your attention to the `strlen` method.

   final int mantissa_size = 23;

     int arg_0;
     char arg_1;
     int arg_2;
     int precision;

     arg_0  = Integer.parseInt(args[0]);
     arg_1 = (args[1]).charAt(0);
     arg_2 = Integer.parseInt(args[2]);
     precision = args[2].length();

     dec2bin(arg_0, arg_1, arg_2, precision);
     return;
  }

}
