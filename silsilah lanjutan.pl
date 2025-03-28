pasangan(david, amy).
pasangan(jack, karen).
pasangan(john, susan).

anak(liza, david).
anak(liza, amy).
anak(john, david).
anak(john, amy).
anak(ray, jack).
anak(ray, karen).
anak(peter, john).
anak(peter, susan).
anak(mary, john).
anak(mary, susan).

laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).
perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).

ayah(X, Y) :- anak(Y, X), laki_laki(X).
ibu(X, Y) :- anak(Y, X), perempuan(X).
saudara(X, Y) :- anak(X, Z), anak(Y, Z), X \= Y.
kakek(X, Y) :- anak(Y, Z), anak(Z, X), laki_laki(X).
nenek(X, Y) :- anak(Y, Z), anak(Z, X), perempuan(X).
paman(X, Y) :- saudara(X, Z), ayah(Z, Y), laki_laki(X).
paman(X, Y) :- saudara(X, Z), ibu(Z, Y), laki_laki(X).
bibi(X, Y) :- saudara(X, Z), ayah(Z, Y), perempuan(X).
bibi(X, Y) :- saudara(X, Z), ibu(Z, Y), perempuan(X).






