menikah(wati, andi).
anakKandung(wati, budi).
saudaraKembar(budi, andi).

is_saudaraKandung(X, Y) :- anakKandung(Z, X), anakKandung(Z, Y), X \= Y.
is_keponakan(Z, Y) :- anakKandung(Y, Z).

pernikahan_tidak_sah(X, Y) :-
    is_saudaraKandung(X, Y);
    is_keponakan(X, Y);
    is_keponakan(Y, X).

pernikahan_sah(X, Y) :-
    \+ pernikahan_tidak_sah(X, Y).
