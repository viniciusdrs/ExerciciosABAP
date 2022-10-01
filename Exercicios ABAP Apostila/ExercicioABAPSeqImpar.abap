* Escreva um algoritmo que gera e escreve os números impares entre 100 e 200

REPORT zz_exercicio17_37.

DATA: v_cont TYPE p VALUE 100.

START-OF-SELECTION.

  PERFORM f_exibe_impar.

FORM f_exibe_impar.
  WHILE v_cont LE 200.
    IF v_cont MOD 2 = 1.
      WRITE:/ v_cont.
    ENDIF.
    v_cont = v_cont + 1.
  ENDWHILE.
ENDFORM.