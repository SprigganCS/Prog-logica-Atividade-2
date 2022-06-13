pai(francesco, celso).
pai(luiz, aguida).
/*bisavôs maternos*/
pai(celso, ana).
pai(celso, junior).
/*filhos do meu vô materno*/
pai(junior, sabrina).
pai(junior, thiago).
/*filhos do meu tio*/


pai(severino, chico).
pai(lino, maria).
/*bisavôs parernos*/

pai(chico, carlos).
pai(chico, fatima).
/*pai do meu pai e tia paterna*/



pai(carlos, sergio).
pai(carlos, andre).
/*meu pai e pai do meu irmão*/


mae(norma, aguida).
mae(benedicta, celso).
/*bisavós maternas*/

mae(aguida, ana).
mae(aguida, junior).
/*vó materna*/

mae(andreia, sabrina).
mae(andreia, thiago).
/*mãe dos meus primos maternos*/




mae(madalena, chico).
mae(luiza, maria).
/*bisavós paternas*/

mae(maria, carlos).
mae(maria, fatima).
/*vó paterna*/


mae(fatima, mariana).
/*mae da minha prima*/

mae(ana, sergio).
mae(ana, andre).
/*minha mãe e mãe do meu irmão*/



/*regras*/

tios(Y, X) :- pai(A, X), pai(B, A), pai(B, Y), not(pai(Y, X)); mae(A, X), mae(B, A), mae(B, Y),not(mae(Y, X)).


primo(F,G) :- tios(Y,G), pai(Y,F).
primo(F,G) :- tios(Y,G), mae(Y,F).


cunhado(C, V) :- irmao(X, V), pai(X, A), mae(C, A).


irmao(X, Y) :- pai(A, X), pai(A, Y), not(X==Y), mae(U, X), mae(U, Y).


avo(A,B) :- pai(A,C), pai(C,B).
avo(A,B) :- pai(A,C), mae(C,B).