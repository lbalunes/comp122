# UTF-8 Encoding:
---
### Name:                                <!-- response -->
### GitHub Account:                      <!-- response -->

## Questions

### Unicode to UTF-8 [Encoding](encode_utf.md)
1. Convert the following Unicode Characters into binary:
   1. U+0920
      - 2# 0000 1001 0010 0000  <!-- response -->
   1. U+0042
      - 2# 0000 0000 0100 0010  <!-- response -->
   1. U+5555
      - 2# 0101 0101 0101 0101  <!-- response -->

1. Determine the number of bytes needed to encode the following values
   1. U+0920
      - 3 bytes  <!-- response -->
   1. U+0042
      - 1 byte  <!-- response -->
   1. U+5555
      - 3 bytes  <!-- response -->

1. Provide the UTF-8 binary encoding for the following values:
   1. U+0920
      - 2# 1110-0000  10-1001 00  10-10 0000   <!-- response -->
   1. U+0042
      - 2# 0100 0010  <!-- response -->
   1. U+5555
      - 2# 1110-0101 10-0101 01 10-01 0101   <!-- response -->

1. Provide the UTF-8 hex encoding for the following values:
   1. U+0920
      - 2# 1110 0000  1010 0100  1010 0000  <!-- response -->
      - 0xE0A4A0  <!-- response -->
   1. U+0042
      - 0x0042  <!-- response -->
   1. U+5555
      - 2# 1110 0101 1001 0101 1001 0101  <!-- response -->
      - 0xE59595   <!-- response -->

### Unicode to UTF-8 [Decoding](decode_utf.md)

Consider the following binary string:
```
01011101111010011010001110110001100001011101000110110010
```

1. Chunk the binary string into bytes:
   - 0101 1101  <!-- response -->
   - 1110 1001  <!-- response -->
   - 1010 0011  <!-- response -->
   - 1011 0001  <!-- response -->
   - 1000 0101  <!-- response -->
   - 1101 0001  <!-- response -->
   - 1011 0010  <!-- response -->

1. Gather together the bytes need for each UTF-8 character:
   - 0101 1101                     <!-- response -->
   - 1110 1001 1010 0011 1011 0001 <!-- response -->
   - 1000 0101 (error)             <!-- response -->
   - 1101 0001 1011 0010           <!-- response -->

1. Unpack the payload from each of the UTF-8 characters:
   - 0101 1101  <!-- response -->
   - 1001 1000 1111 0001  <!-- response -->
   -  100 0111 0010   <!-- response -->

1. Decode each of the resulting binary values into hexadecimal:
   - 0x5D  <!-- response -->
   - 0x98F1  <!-- response -->
   - 0x0472  <!-- response -->




