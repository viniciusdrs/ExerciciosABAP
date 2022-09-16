*Você deve fazer um programa que leia um valor qualquer e apresente uma mensagem dizendo em qual dos seguintes intervalos ([0,25], (25,50], (50,75], (75,100]) este valor se encontra. 
*Obviamente se o valor não estiver em nenhum destes intervalos, deverá ser impressa a mensagem “Fora de intervalo”.
*O símbolo ( representa "maior que". Por exemplo:
*[0,25]  indica valores entre 0 e 25.0000, inclusive eles.
*(25,50] indica valores maiores que 25 Ex: 25.00001 até o valor 50.0000000
*Entrada
*O arquivo de entrada contém um número com ponto flutuante qualquer.


REPORT zz_exbee1037_37.

PARAMETERS: p_valor TYPE p DECIMALS 2.

START-OF-SELECTION.

  PERFORM f_exibe_intervalo.

FORM f_exibe_intervalo.
  IF ( p_valor GE 0 ) AND ( p_valor LE 25 ).
    WRITE: 'Intervalo [0,25]'.
  ELSEIF ( p_valor GT 25 ) AND ( p_valor LE 50 ).
    WRITE: 'Intervalo [25,50]'.
  ELSEIF ( p_valor GT 50 ) AND ( p_valor LE 75 ).
    WRITE: 'Intervalo [50,75]'.
  ELSEIF ( p_valor GT 75 ) AND ( p_valor LE 100 ).
    WRITE: 'Intervalo [75,100]'.
  ENDIF.
ENDFORM.