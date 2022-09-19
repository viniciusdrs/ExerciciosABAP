*Leia 4 valores inteiros A, B, C e D. A seguir, se B for maior do que C e se D for maior do que A, 
*e a soma de C com D for maior que a soma de A e B e se C e D, ambos, forem positivos e se a variável A for par 
*escrever a mensagem "Valores aceitos", senão escrever "Valores nao aceitos".
*Entrada
*Quatro números inteiros A, B, C e D.
*Saída
*Mostre a respectiva mensagem após a validação dos valores.

REPORT zz_exbee1035_37.

PARAMETERS: p_num_a TYPE p,
            p_num_b TYPE p,
            p_num_c TYPE p,
            p_num_d TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_mens.

FORM f_exibe_mens.
  IF ( p_num_b GT p_num_c ) AND
     ( p_num_d GT p_num_a ) AND
     ( p_num_c + p_num_d GT p_num_a + p_num_b ) AND
     ( p_num_c GT 0 ) AND ( p_num_d GT 0 ) AND
     ( p_num_a MOD 2 = 0 ).

    WRITE: 'Valores Aceitos'.
  ELSE.
    WRITE: 'Valores não Aceitos'.
  ENDIF.
ENDFORM.