/*power(Num,Pow,Ans):-Ans is Num**Pow.*/

power :-
	write('Enter Number : '),
	read(X),
	write('Enter Power : '),
	read(Y),
	Z is X**Y,
	write(X),write(' to the power '),write(Y),write(' is '),write(Z),nl,
	write('Do you want to continue ? (yes/no) : '),
	read(Ch),
	cont(Ch).

cont(yes) :- power.
cont(no) :- !.
cont(Ch) :- write('Sorry, you entered wrong choice !'),!.

