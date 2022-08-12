conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail]):- del(X,Tail,Tail).

