*Faça um algoritmo que leia dois números inteiros e imprima duas sequências:
* A primeira sequência vai do menor número até o maior número
* E a segunda sequência vai do maior número até o menor número

REPORT zz_exercicio14_37.

PARAMETERS: v_num1 TYPE p,
            v_num2 TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_seq.

FORM f_exibe_seq.

  IF v_num1 LT v_num2.
    WHILE v_num1 LE v_num2.
      WRITE:/ v_num1.
      v_num1 = v_num1 + 1.
    ENDWHILE.

  ELSEIF v_num2 LT v_num1.
    WHILE v_num2 LE v_num1.
      WRITE:/ v_num2.
      v_num2 = v_num2 + 1.
    ENDWHILE.
  ENDIF.

ENDFORM.