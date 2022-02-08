@multiplication @positive
Feature: Multiplication 2 number

  Scenario Outline: User would do multiplication operation
  Given user visits online calculator page
  When user multiply "<numb1>" with "<numb2>"
  Then the results should be "<results>"


  Examples:
		| numb1  		| numb2   	| results	|
    | 	1 			|   1			  |		 1    |
    | 	1 			|   3			  |		 3    |  
    | 	0 			|   1			  |		 0    |
    | 	10 			|   10			|		 100  |
    | 	1000000	|   1000000	|		 1e+12|  

  Scenario Outline: User would do multiplication operation with negative number
  Given user visits online calculator page
  When user multiply negative number "<negnumb1>" with "<negnum2>"
  Then the results should be "<results>"
  Examples:
		| negnumb1  | negnumb2  | results	| 
    |   -1      |   -1      |     1   |
    | 	10  		|   -2		  |		 -8   |

  