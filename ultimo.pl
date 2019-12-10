%3) Obter o ultimo elemento de uma lista

ultimo([_|T],U):- ultimo(T,U).
ultimo([T],T).