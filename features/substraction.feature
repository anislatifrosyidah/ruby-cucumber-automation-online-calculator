@substraction @positive
Feature: Subtraction 2 number

  Scenario Outline: User would do substraction operation
  Given user visits online calculator page
  When user substract "<numb1>" with "<numb2>"
  Then the results should be "<results>"


  Examples:
		| numb1  		| numb2   	| results	|
    | 	1 			|   1			  |		 0    |
    | 	1 			|   3			  |		-2    |  
    | 	0 			|   1			  |		-1    |
    | 	10 			|   100			|		-90   |
    | 	1000000	|   1000000	|    0    |  
    |   -1      |   -1      |    0    |
    | 	10  		|   -2		  |		 12   |

