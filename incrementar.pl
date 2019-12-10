%9) Incrementar em uma unidade cada elemento de uma lista de inteiros

incrementar([H1|T1], [H|T]) :- incrementar(T1, T), H is H1+1. %O head de L recebe o head incrementado da lista
incrementar([],[]).