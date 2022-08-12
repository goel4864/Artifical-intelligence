/*factorial(0,1).
factorial(N,R):-N>0,N1 is N-1,factorial(N1,Res),R is N*Res.
*/

input :-
	write('Enter the number : '),
	read(N),
	factorial(N,R),
	output(N,R).
factorial(0,1).

factorial(N,R):-N>0,N1 is N-1,factorial(N1,Res),R is N*Res.
	
output(N,R) :-
	write('Factorial of '),write(N),write(' is '),write(R),nl,
	write('Do you want to continue ? (yes/no) : '),
	read(Ch),
	cont(Ch).	

cont(yes) :- input.
cont(no) :- !.
cont(Ch) :- write('Sorry, you entered wrong choice !'),!.

