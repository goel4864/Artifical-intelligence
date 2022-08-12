/*
gcd(0, X, X) :-!.
gcd(X, 0, X) :-!.
gcd(X, X, X) :-!.
gcd(M, N, X) :- N>M, Y is N-M, gcd(M, Y, X).
gcd(M, N, X) :- N<M, Y is M-N, gcd(Y, N, X).

gcd(X,0,X).
gcd(X,Y,G) :- 
	R is mod(X,Y),
 	gcd(Y,R,G).
*/


input :-
	write('Enter 1st number : '),
	read(X),
	write('Enter 2nd number : '),
	read(Y),
	gcd(X,Y,G),
	output(X,Y,G).

gcd(0, X, X) :-!.
gcd(X, 0, X) :-!.
gcd(X, X, X) :-!.
gcd(M, N, X) :- N>M, Y is N-M, gcd(M, Y, X).
gcd(M, N, X) :- N<M, Y is M-N, gcd(Y, N, X).
/*gcd(X,0,X).
gcd(X,Y,G) :-
	R is mod(X,Y),
 	gcd(Y,R,G).
*/
output(X,Y,G) :-
	write('GCD of '),write(X),write(' and '),write(Y),write(' is '),write(G),nl,
	write('Do you want to continue ? (yes/no) : '),
	read(Ch),
	cont(Ch).

cont(yes) :- input.
cont(no) :- !.
cont(Ch) :- write('Sorry, you entered wrong choice !'),!.