
class encode_binary32 {
  static MIPS_OS_Interface mips = new MIPS_OS_Interface();

  // binary_32 format:   |  s  | eeee eeee | mmm mmmm mmmm mmmm mmmm mmmm |
  //                     | <1> | <-  8  -> | <-          23            -> |
  //   biassed exponent occupies  8 bit/s and is located positions: 31 .. 24
  //   mantissa         occupies 23 bit/s and is located positions: 23 ..  1          

  final static int binary32_bias  = 127;
  final static int sign_shift     =  31;  //   << (8 + 23 )
  final static int expon_shift    =  23;  //   << (23)
  final static int mantissa_shift =   9;  //  >>> (1 + 8)  // the mantissa is left-justified
  final static int $zero          =   0;  


  static int position_most_significant_bit(int $a0){
            // $a0 : original_number
            int $v0; // : return value

            int counter;
            int number;

            counter = $zero;
            number = $a0;
     loop:  for(; number != $zero ;) {
               counter ++;
               number = number >> 1;
               continue;
            }
     done:  ;
            $v0 = counter;

            return $v0;
  }

  public static int encode_binary32(char sign, int coefficient, char expon_sign, int exponent){
            // $a0 : sign
            // $a1 : coefficient
            // $a2 : expon_sign
            // $a3 : exponent
            int $v0; // : return value

            

            int $a0 = sign;
            int $a1 = coefficient;
            int $a2 = expon_sign;
            int $a3 = exponent;


            int $t0 = sign_shift;
            int $t1 = coefficient;
            int $t2 = mantissa_shift;
            int $t3 = expon_shift;

            int $t4; //= encoded_sign;
            int $t5; //= encoded_mantissa;
            int $t6; //= encoded_exponent;
            int $t7;  //= pos_msb;
            
            int $t8 = '-';
            


            /////////////////////////////////////////////////////////
            // BEGIN CODE of INTEREST //  //final version: Java_v2
            /////////////////////////////////////////////////////////
            // 1. Encode each of the three fields of the floating point format:

            // 1.1 Sign Encoding
            //     - Based upon the sign, encode the sign as a binary value
            if ($a0 == $t8) {                // if (sign == '-' ) { 
              $t4 = 0b1;                     // encoded_sign = 0b1; 
            } else {                         //} else { 
              $t4 = 0b0;                     //encoded_sign = 0b0; 
            }                                //}

            // 1.2 Exponent Encoding
            //     - Make the exponent a signed quanitity
            //     - Add the bias
            if ($a2  == $t8) {              //if (expon_sign == '-') { 
               $t6 = - $a3;                // encoded_exponent =   -exponent; 
            } else {                        //} else {
               $t6 =  $a3;                  // encoded_exponent = exponent;
            }                               // }
            $t6 = $t6 + 127;                //encoded_exponent = encoded_exponent + binary32_bias; 
            
            // 1.3  Mantissa Encoding
            //      - Determ the number of bits in the coefficient
            //      - Shift the coefficient to the left to obtain the mantissa
            $t7 = position_most_significant_bit($a1);      // pos_msb = position_most_significant_bit(coefficient);
            
            $t5 = 32;
            $t5 = $t5 - $t7;
            $t5 = $t5 + 1;
            $t5 = $a1 << $t5;         //encoded_mantissa = coefficient << (32 - pos_msb) +1; 

            /////////////////////////////////////////////////////////
            // 2. Shift the pieces into place: sign, exponent, mantissa
            $t4 = $t4 << $t0;                                     //encoded_sign = encoded_sign << sign_shift; 
            $t6 = $t6 << $t3;                                    //encoded_exponent = encoded_exponent << expon_shift;
            $t5 = $t5 >>> $t2;                                  //encoded_mantissa = encoded_mantissa >>> mantissa_shift; 
            
            /////////////////////////////////////////////////////////
            // 3. Merge the pieces together
        

            $v0 = $t4 | $t6 | $t5; //encoded_exponent = encoded_exponent + binary32_bias;


            /////////////////////////////////////////////////////////
            // END CODE of INTEREST
            /////////////////////////////////////////////////////////



            /////////////////////////////////////////////////////////
            // Provide some output for validation to the Prof.

            mips.print_t($v0);             // Call print_t to print the value as a bi"t" string
            mips.print_ci('\n');           // Call print_ci to print a newline
            
            return $v0;
  }


  public static void main (String args[]) {

    encode_binary32( '+', 0x34E1, '-', 0x29);
           // Inputs:
           //   '+'    ==> 43
           //   0x34E1 ==> 0b0011 0100 1110 0001
           //   '-'    ==> 45
           //   0x29   ==> 41
           // Output:
           //   v0: 0  0101 011 0  101 0011 1000 0100 0000 0000  (0x2B538400) (726893568)
           //   stdout: 00101011010100111000010000000000


    return;

  }
}