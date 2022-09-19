*Leia quatro valores inteiros A, B, C e D. A seguir, calcule e mostre a diferença do produto de A e B pelo produto de C e D segundo a fórmula: DIFERENCA = (A * B - C * D).
*Entrada
*O arquivo de entrada contém 4 valores inteiros.
*Saída
*Imprima a mensagem DIFERENCA com todas as letras maiúsculas, conforme exemplo abaixo, com um espaço em branco antes e depois da igualdade.

REPORT zz_exbee1007_37.

DATA: v_dif TYPE p.

PARAMETERS: p_num_a TYPE p,
            p_num_b TYPE p,
            p_num_c TYPE p,
            p_num_d TYPE p.

START-OF-SELECTION.

  PERFORM f_exibe_dif.

FORM f_exibe_dif.
  v_dif = ( p_num_a * p_num_b - p_num_c * p_num_d ).
  WRITE: 'Diferença = ' , v_dif.
ENDFORM.