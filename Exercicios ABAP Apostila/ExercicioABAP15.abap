*Faça um algoritmo que receba 5 números inteiros positivos, calcule e mostre:
* A soma dos números digitados
* A média dos números digitados
* O maior número digitado
* O menor número digitado
* A média dos números pares

REPORT zz_exercicio15_37.

DATA: v_soma_todos TYPE p,
      v_soma       TYPE p VALUE 0,
      v_cont       TYPE p VALUE 0,
      v_resul      TYPE p,
      v_max        TYPE i,
      v_min        TYPE i,
      v_media      TYPE p.

PARAMETERS: v_num1 TYPE p,
            v_num2 TYPE p,
            v_num3 TYPE p,
            v_num4 TYPE p,
            v_num5 TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_num.

FORM f_exibe_num.

  v_soma_todos = v_num1 + v_num2 + v_num3 + v_num4 + v_num5.
  WRITE: 'Soma: ' , v_soma_todos.

  v_media = ( v_num1 + v_num2 + v_num3 + v_num4 + v_num5 ) / 5.
  WRITE:/ 'Media: ' , v_media.

  v_max = nmax( val1 = v_num1
val2 = v_num2
val3 = v_num3
val4 = v_num4
val5 = v_num5 ).

  WRITE:/ 'Maior valor: ' , v_max.

  v_min = nmin( val1 = v_num1
val2 = v_num2
val3 = v_num3
val4 = v_num4
val5 = v_num5 ).

  WRITE:/ 'Menor valor: ' , v_min.



  IF v_num1 MOD 2 = 0.
    v_soma = v_soma + v_num1.
    v_cont = v_cont + 1.
  ENDIF.

  IF v_num2 MOD 2 = 0.
    v_soma = v_soma + v_num2.
    v_cont = v_cont + 1.
  ENDIF.

  IF v_num3 MOD 2 = 0.
    v_soma = v_soma + v_num3.
    v_cont = v_cont + 1.
  ENDIF.

  IF v_num4 MOD 2 = 0.
    v_soma = v_soma + v_num4.
    v_cont = v_cont + 1.
  ENDIF.

  IF v_num5 MOD 2 = 0.
    v_soma = v_soma + v_num5.
    v_cont = v_cont + 1.
  ENDIF.

  v_resul = v_soma / v_cont.

  WRITE:/ 'Resultado média de Pares: ' , v_resul.

ENDFORM.