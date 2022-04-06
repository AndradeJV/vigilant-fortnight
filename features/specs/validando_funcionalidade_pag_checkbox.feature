#language: pt

@exec
@checkboxes
Funcionalidade: Validando funcionalidade página de checkboxes

    Cenário: Marcando filmes que eu já assisti
        Dado que eu esteja na página de filmes
        Quando eu marcar os filmes que eu já assisti
        Então eu devo ver checkboxes marcados