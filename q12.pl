sumlist(List,Sum):- List=[], Sum=0.
sumlist(List,Sum):- List=[Head|Tail], sumlist(Tail,SUM), Sum is
Head+SUM.
sumlist:-
write("Enter the list to sum : "),
read(List),
sumlist(List,Sum),
write("The sum of each element of list is: "),
write(Sum),!.
