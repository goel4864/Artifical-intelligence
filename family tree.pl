parent(jagdish,shyam).
parent(murti,shyam).
parent(hukam,madhu).
parent(prkasho,madhu).
parent(shyam,akanksha).
parent(madhu,akanksha).
parent(shyam,arpit).
parent(madhu,arpit).
parent(jagdish,gopal).
parent(murti,gopal).
parent(gopal,sahib).
parent(sahib,shreyansh).
parent(kamini,shreyansh).

male(jagdish).
male(hukam).
male(shyam).
male(gopal).
male(sahib).
male(arpit).
male(shreyansh).

female(murti).
female(prkasho).
female(madhu).
female(kamini).
female(akanksha).

spouse(hukam,prkasho).
spouse(jagdish,murti).
spouse(shyam,madhu).
spouse(sahib,kamini).
spouse(Y,X) :-spouse(X,Y), X \= Y , Y \= X.

ancestor(X,Z) :-parent(X,Y),ancestor(Y,Z).
ancestor(X,Y) :-parent(X,Y).
grandparent(X,Z) :-parent( X, Y), parent( Y, Z). 
grandmother(X,Y) :-grandparent(X,Y),female(X).  
grandfather(X,Y) :-grandparent(X,Y),male(X). 
grandchild(X,Y) :-grandparent(Y,X).
granddaughter(X,Y) :-grandchild(X,Y),female(X).
grandson(X,Y) :-grandchild(X,Y),male(X).
husband(X,Y):-spouse(X,Y),male(X).
wife(X,Y):-spouse(X,Y),female(X).
father(X,Y) :-parent(X,Y),male(X).
mother(X,Y) :-parent(X,Y),female(X).
child(X,Y) :-parent(Y,X).
son(X,Y) :-child(X,Y),male(X).
daughter(X,Y) :-child(X,Y),female(X).
sibling(X,Y) :-father(Z,X),father(Z,Y),X \= Y.
sister(X,Y) :-father(Z,X),father(Z, Y),female(X),X \= Y.
brother(X,Y) :-parent(Z,X),parent(Z,Y),male(X),X \= Y.
uncle(X,Y) :-brother(X,Z),child(Y,Z).
aunt(X,Y) :-sister(X,Z),child(Y,Z).
cousin(X,Y) :-parent(Z,X),parent(U,Y),sibling(Z,U).
nephew(X,Y) :-sibling(Y,Z),son(X,Z).
niece(X,Y) :-sibling(Y,Z),daughter(X,Z).
