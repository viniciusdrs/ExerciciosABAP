*Faça um algoritmo para realizar as operações matemáticas de soma, subtração, divisão, multiplicação e resto. O algoritmo deve ler dois operandos e o sinal correspondente á operação desejada, no final deve ser impresso o resultado.


REPORT zz_exercicio10_37.

DATA: v_resul TYPE p DECIMALS 2.

PARAMETERS: v_num1  TYPE p DECIMALS 2,
            v_num2  TYPE p DECIMALS 2,
            v_sinal TYPE c.

START-OF-SELECTION.

  PERFORM f_exibe_resul.

FORM f_exibe_resul.

  CASE v_sinal.
    WHEN '+'.
      v_resul = v_num1 + v_num2.
      WRITE: 'Soma: ' , v_resul.
    WHEN '-'.
      v_resul = v_num1 - v_num2.
      WRITE:/ 'Subtração: ' , v_resul.
    WHEN '/'.
      v_resul = v_num1 / v_num2.
      WRITE:/ 'Divisão: ' , v_resul.
    WHEN '*'.
      v_resul = v_num1 * v_num2.
      WRITE:/ 'Multiplicação: ' , v_resul.
    WHEN '&'.
      v_resul = v_num1 MOD v_num2.
      WRITE:/ 'Resto: ' , v_resul.
  ENDCASE.

ENDFORM.