@addition @positive
Feature: Addition 2 number

  Scenario Outline: User would do addition operation
  Given user visits online calculator page
  When user add "<numb1>" with "<numb2>"
  Then the results should be "<results>"


  Examples:
		| numb1  		| numb2   	| results	|
    | 	1 			|   1			  |		 2    |
    | 	10			|   30		  |		40    |  
    | 	0 			|   1			  |		 1    |
    | 	-10 		|   -10			|		 0    |
    | 	1000000	|   1000000	|	2000000 |  
    |   -1      |   -1      |    0    |

