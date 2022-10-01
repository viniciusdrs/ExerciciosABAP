* Contruir um algoritmo que leia o ano de nascimento de uma pessoa e o ano atual, calcule e mostre:
* A idade dessa pessoa
* Quantos anos essa pessoa terá em 2015

REPORT zz_exercicio5_37.

DATA: v_idade     TYPE p,
      v_idade2015 TYPE p.

PARAMETERS: v_anasc  TYPE p,
            v_aatual TYPE p.


START-OF-SELECTION.

  PERFORM f_exibe_resul.

FORM f_exibe_resul.
  v_idade = v_aatual - v_anasc.
  v_idade2015 = 2015 - v_anasc.
  WRITE: 'Idade: ' , v_idade.
  WRITE:/ 'Idade 2015: ' , v_idade2015.
ENDFORM.