* Construir um algoritmo que leia um número inteiro maior que zero e imprima a sequência: 1, 2, 4, 8, 16, 32...(múltiplos de 2) enquanto o valor for menor ou igual ao valor lido
*Exemplo:
*Valor lido: 82
*Sequência 1, 2, 4, 8, 16, 32, 64

REPORT zz_exercicio13_37.

DATA: v_cont  TYPE p value 1,
      v_resul TYPE p.

PARAMETERS: v_num TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_seq.

FORM f_exibe_seq.
  WHILE v_cont LT v_num.
    WRITE:/ v_cont.
    v_cont = v_cont * 2.
  ENDWHILE.
ENDFORM.