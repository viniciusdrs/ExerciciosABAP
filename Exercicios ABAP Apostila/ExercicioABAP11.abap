*Faça um algoritmo que imprima a seguinte sequência 1, 2, 3, 4, 5,... 100

REPORT zz_exercicio11_37.

DATA: v_cont TYPE p value 1.

START-OF-SELECTION.

  PERFORM f_exibe_resul.

FORM f_exibe_resul.
  WHILE v_cont LE 100.
    WRITE:/ v_cont.
    v_cont = v_cont + 1.
  ENDWHILE.
ENDFORM.