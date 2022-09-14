*Faça um algoritmo que apresente os resultados de uma tabuada para um número qualquer informado pelo usuário

REPORT zz_exercicio12_37.

DATA: v_cont  TYPE p,
      v_resul TYPE p.
v_cont = 1.

PARAMETERS: v_num TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_tabu.

FORM f_exibe_tabu.
  WHILE v_cont LE 10.
    v_resul = v_num * v_cont.
    WRITE:/ v_num , '*' , v_cont , '=' , v_resul.

    v_cont = v_cont + 1.
  ENDWHILE.
ENDFORM.