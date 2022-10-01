* Considerando A=3, B=2 e C=5 determine como Verdadeiro ou Falso
* A > B
* B = A
* (A >= B) AND (C <> 5)
* (B < A) OR (A = 3)
* (A > B) OR (A = 3)
* (C <= 7) AND (B > 0) AND (C > A)

REPORT zz_exercicio2_37.

DATA: v_resultado TYPE char100.

PARAMETERS: a TYPE p,
            b TYPE p,
            c TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_resultado.

FORM f_exibe_resultado.

  IF a GT b.
    v_resultado = 'Verdadeiro'.
  ELSE.
    v_resultado = 'Falso'.
  ENDIF.

  WRITE: 'A > B: ' , v_resultado.

  IF b EQ a.
    v_resultado = 'Verdadeiro'.
  ELSE.
    v_resultado = 'Falso'.
  ENDIF.

  WRITE: 'B = A: ' , v_resultado.

  IF ( a GE b ) AND ( c NE 5 ).
    v_resultado = 'Verdadeiro'.
  ELSE.
    v_resultado = 'Falso'.
  ENDIF.

  WRITE: '(A >= B) AND (C <> 5): ' , v_resultado.

  IF ( b LT a ) OR ( a EQ 3 ).
    v_resultado = 'Verdadeiro'.
  ELSE.
    v_resultado = 'Falso'.
  ENDIF.

  WRITE: '(B < A) OR (A = 3): ' , v_resultado.

  IF ( a GT b ) OR ( a EQ 3 ).
    v_resultado = 'Verdadeiro'.
  ELSE.
    v_resultado = 'Falso'.
  ENDIF.

  WRITE: '(A > B) OR (A = 3): ' , v_resultado.


  IF ( c LE 7 ) AND ( b GT 0 ) AND ( c GT a ).
    v_resultado = 'Verdadeiro'.
  ELSE.
    v_resultado = 'Falso'.
  ENDIF.

  WRITE: '(C <= 7) AND (B > 0) AND (C > A): ' , v_resultado.

ENDFORM.