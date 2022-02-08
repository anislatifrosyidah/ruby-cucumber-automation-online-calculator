@division @positive
Feature: Division 2 number

  Scenario Outline: User would do division operation
  Given user visits online calculator page
  When user divide "<numb1>" with "<numb2>"
  Then the results should be "<results>"


  Examples:
		| numb1  		| numb2   	| results	|
    | 	1 			|   1			  |		 1    |
    | 	3 			|   1			  |		 3    |  
    | 	0 			|   1			  |		 0    |
    | 	10 			|   10			|		 1    |
    | 	1000000	|   1000000	|		 1    |  
    |   -1      |   -1      |     1   |
    | 	10  		|   -2		  |		 -5   |
    | 	10  		|   0 		  |	 Error  |

