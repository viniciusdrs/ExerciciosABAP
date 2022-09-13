* Construir um algoritmo que leia quatro notas e imprima a média aritmética do aluno

REPORT zz_exercicio4_37.

DATA: v_media TYPE p DECIMALS 2.

PARAMETERS: v_nota1 TYPE p DECIMALS 2,
            v_nota2 TYPE p DECIMALS 2,
            v_nota3 TYPE p DECIMALS 2,
            v_nota4 TYPE p DECIMALS 2.

START-OF-SELECTION.

  PERFORM f_exibe_resultado.

FORM f_exibe_resultado.
  v_media = ( v_nota1 + v_nota2 + v_nota3 + v_nota4 ) / 4.
  WRITE: 'Média: ' , v_media.
ENDFORM.