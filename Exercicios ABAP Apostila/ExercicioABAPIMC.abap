* Faça um algoritmo que leia a altura e p sexo de uma pessoa, calcule e mostre se peso ideal. Sabendo que:
* Para Homens: (72.7 * h) - 58
* Para Mulheres (62.1 * h) - 44.7

REPORT zz_exercicio9_37.

DATA: v_peso_ideal TYPE p DECIMALS 2.

PARAMETERS: v_altura TYPE p DECIMALS 2,
            v_gen    TYPE c.

START-OF-SELECTION.

  PERFORM f_exibe_mens.

FORM f_exibe_mens.
  IF v_gen = 'M'.
    v_peso_ideal = ( '72.7' * v_altura ) - 58.
    WRITE: 'Peso Ideal para Homem: ' , v_peso_ideal.
  ELSEIF v_gen = 'F'.
    v_peso_ideal = ( '62.1' * v_altura ) - '44.7'.
    WRITE: 'Peso Ideal para Mulher: ' , v_peso_ideal.
  ENDIF.
ENDFORM.