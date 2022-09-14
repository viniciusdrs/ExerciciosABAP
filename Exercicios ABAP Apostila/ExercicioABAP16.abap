* Desenvolver um algoritmo que efetue a soma de todos os números impares que são múltiplos de três e que se encontram no conjunto dos números de 1 até 500

REPORT zz_exercicio16_37.

DATA: v_cont TYPE p VALUE 1,
      v_soma TYPE p.


START-OF-SELECTION.

  PERFORM f_exibe_soma.

FORM f_exibe_soma.

  WHILE v_cont LE 500.

    IF v_cont MOD 3 = 1.
      v_soma = v_soma + v_cont.
    ENDIF.

    v_cont = v_cont + 1.

  ENDWHILE.

  WRITE: v_soma.

ENDFORM.