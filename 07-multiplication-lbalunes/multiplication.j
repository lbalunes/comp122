public static int multiplication(int a, int b){
  // Algorithmic Complexity: O(word_size)

init:   int sum = 0;
        int bit = 0;

test:     for (; b != 0 ; ) {
body:         // pop off a bit from b
              bit = b & 0x01;
              b = b >>> 1;  
        
              if ( bit == 1 ) {
iftrue:         ;
                sum += a;
                //goto ifdone;
              } else {
iffalse:        ;
                // goto ifdone;
              }

ifdone:       ;
              a = a << 1;
              
          }

proceed:      ;
          return sum;

} 
