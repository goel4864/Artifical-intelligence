%Write a Prolog program to implement reverse (L, R) where List L is original and List R is reversed list.
conc([],L2,L3):- L3 = L2.
conc([X|L1],L2,[X|L3]):- conc(L1,L2,L3).
reverse(L1,R):- L1 =[] ,R = [].
reverse([X|L1],R):- reverse(L1,L3), conc(L3,[X],R).
reverse:-
write("Enter the list to be reversed :: "),
read(L1),
reverse(L1,L2),
write("Reversed list is :: "),
write(L2),!.
