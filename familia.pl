progenitor(daniel,matias).
progenitor(daniel,juan).
progenitor(daniel,franco).
progenitor(juan,claudia).
progenitor(jorge,daniel).
progenitor(jorge,sonia).
progenitor(eduardo,lucio).
progenitor(eduardo,nacho).
progenitor(martha,claudia).
progenitor(claudia,matias).
progenitor(claudia,juan).
progenitor(ana,daniel).
progenitor(ana,sonia).
progenitor(sonia,lucio).
progenitor(sonia,nacho).

hermanos(Hermano1,Hermano2):-
progenitor(Padre,Hermano1),
progenitor(Padre,Hermano2),
Hermano1/=Hermano2.

abuelo(Nieto,Abuelo):-
progenitor(Abuelo,Padre),
progenitor(Padre,Nieto).

primos(Primo,Primo2):-
  progenitor(Padre,Primo),
  progenitor(Padre,Primo2),
  Primo/=Primo2.

pareja(Persona,Persona2):-
  progenitor(Persona,Hijo),
  progenitor(Persona2,Hijo),
  Persona/=Persona2.

tio(Tio,Sobrino):-
  progenitor(Padre,Sobrino),
  hermano(Padre,Tio).

suegro(Suegro,Persona):-
  progenitor(Suegro,Hijo),
  pareja(Persona,Hijo).
