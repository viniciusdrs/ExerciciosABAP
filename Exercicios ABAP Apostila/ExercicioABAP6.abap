* Efetuar a leitura de um determinado valor e apresentá-lo, caso não seja maior que três.

REPORT zz_exercicio6_37.

PARAMETERS: v_num TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_num.

FORM f_exibe_num.
  IF v_num LE 3.
    WRITE: v_num.
  ENDIF.
ENDFORM.