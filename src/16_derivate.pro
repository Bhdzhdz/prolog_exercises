der(F+G,X,DG+DF):- 
    der(F,X,DF), 
    der(G,X,DG).

der(e^U,X,DU*e^U):- 
    der(U,X,DU).

der(K,_,0):- 
    number(K).

der(X^N,X,N*(X^(N-1))):- 
    number(N).