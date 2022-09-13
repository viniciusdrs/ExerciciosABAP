* Contruir um algoritmo que calcule a área de um triângulo

REPORT zz_exercicio3_37.

DATA: at_resultado TYPE p DECIMALS 2.

PARAMETERS: at_alt  TYPE p,
            at_base TYPE p.

START-OF-SELECTION.

  PERFORM exibe_resultado.

FORM exibe_resultado.

  at_resultado = ( at_alt * at_base ) / 2.
  WRITE:/ 'A Área do Triangulo é: ' , at_resultado.

ENDFORM.