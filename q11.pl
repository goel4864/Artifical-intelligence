%Write a program in PROLOG to implement palindrome (L) which checks whether a list L is a palindrome or not.
palindrome(L):- reverse(L,L).
palindrome:-
write("Enter the list is : "),
read(L),
(reverse(L,L)->
write("The entered list is palindrome");
write("The entered list is not palindrome")),!.
