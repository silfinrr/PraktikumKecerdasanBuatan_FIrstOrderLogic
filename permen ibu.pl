anakIbu(andi).
anakIbu(budi).
anakIbu(cika).
anakIbu(dani).
anakIbu(emil).
not(anakIbu(fadil)).

sukaPermen(andi).
sukaPermen(budi).
sukaPermen(cika).
not(sukaPermen(dani)).
not(sukaPermen(emil)).

mendapatPermen(X) :- anakIbu(X), sukaPermen(X).
mendapatUang(X) :- anakIbu(X), not(sukaPermen(X)).

semuaAnakIbu(X) :- anakIbu(X).
mendapatPermenLangsung(X) :- mendapatPermen(X).
mendapatUangLangsung(X) :- mendapatUang(X).
cikaMendapatUang :- mendapatUang(cika).
fadilTidakDapatApaApa :- not(anakIbu(fadil)).
