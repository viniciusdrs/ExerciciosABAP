* Ler um número inteiro e apresentar uma mensagem informando se o número é par ou ímpar

REPORT zz_exercicio8_37.

PARAMETERS: v_num TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_mensagem.

FORM f_exibe_mensagem.

  IF v_num MOD 2 = 0.
    WRITE: 'PAR'.
  ELSE.
    WRITE: 'IMPAR'.
  ENDIF.
ENDFORM.