* Ler dois valores inteiros e apresentar o maior dos dois números

REPORT zz_exercicio7_37.

PARAMETERS: v_num1 TYPE p,
            v_num2 TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_num.

FORM f_exibe_num.
  IF v_num1 GT v_num2.
    WRITE: v_num1.
  ELSE.
    WRITE: v_num2.
  ENDIF.
ENDFORM.