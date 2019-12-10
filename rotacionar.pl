%13) Rotacionar uma lista em uma posicao

rotacionar([],[]). %vazio volta vazio
rotacionar([H1|T1], T) :- N is H1, ajunta(N, T1, T).

ajunta(0,[],[_]).
ajunta(N, [H1|T1], [H1|T]):- ajunta(N, T1, T).
ajunta(N,[],[N|T]):- ajunta(0, [], [N|T]).