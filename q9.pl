%Write a Prolog program to implement conc (L1, L2, L3) where L2 is the list to be appended with L1 to get the resulted list L3.
conc([],L2,L3):- L3 = L2.
conc([X|L1],L2,[X|L3]):- conc(L1,L2,L3).
concatenate:-
write("Enter List One is : "),
read(L1),
write("Enter List two : "),
read(L2),
conc(L1,L2,L3),
write("The concatenated list is (L1,L2) is : "), write(L3),!.