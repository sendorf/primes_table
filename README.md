# Prime Numbers Table Generator

Utility for generating a multiplication table of the first X prime numbers.

## Usage

To use this primes multiplication table generator you have to run the following command, where 'X' extends for the size of the table:

    ./primes_table --count X


       |  2  3   5   7  11  13  17  19  23  29
    ---+--------------------------------------
     2 |  4  6  10  14  22  26  34  38  46  58
     3 |  6  9  15  21  33  39  51  57  69  87
     5 | 10 15  25  35  55  65  85  95 115 145
     7 | 14 21  35  49  77  91 119 133 161 203
    11 | 22 33  55  77 121 143 187 209 253 319
    13 | 26 39  65  91 143 169 221 247 299 377
    17 | 34 51  85 119 187 221 289 323 391 493
    19 | 38 57  95 133 209 247 323 361 437 551
    23 | 46 69 115 161 253 299 391 437 529 667
    29 | 58 87 145 203 319 377 493 551 667 841

Also it can be used with square numbers instead of prime numbers, to enable this option you have to use the program like this:

    ./primes_table --square --count X

The result for this would be something like this:

      | 1  4  9
    --+--------
    1 | 1  4  9
    4 | 4 16 36
    9 | 9 36 81

## Tests

To run the tests use the following command:

    rake spec

## Other considerations

Done with ruby 2.2.0