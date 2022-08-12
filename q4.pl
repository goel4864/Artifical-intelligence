/*generate_fib(1,0).
generate_fib(2,1).
generate_fib(N,T):-N>2,N1 is N-1,N2 is N-2,generate_fib(N1,T1),generate_fib(N2,T2),T is T1+T2.
*/
input :-
	write('Enter the value of N (Nth term) : '),
	read(N),
	generate_fib(N,T),
	output(N,T).

generate_fib(1,0).
generate_fib(2,1).
generate_fib(N,T):-N>2,N1 is N-1,N2 is N-2,generate_fib(N1,T1),generate_fib(N2,T2),T is T1+T2.

output(N,T) :-
	nl,write(N),write('th term of fibonacci series : '),write(T),nl,nl,
	write('Do you want to continue ? (yes/no) : '),
	read(Ch),
	cont(Ch).	

cont(yes) :- input.
cont(no) :- !.
cont(Ch) :- write('Sorry, you entered wrong choice !'),!.


