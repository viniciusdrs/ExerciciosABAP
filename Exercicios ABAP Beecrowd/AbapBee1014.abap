*Calcule o consumo médio de um automóvel sendo fornecidos a distância total percorrida (em Km) e o total de combustível gasto (em litros).
*Entrada
*O arquivo de entrada contém dois valores: um valor inteiro X representando a distância total percorrida (em Km), e um valor real Y representando o total de combustível gasto, com um dígito após o ponto decimal.
*Saída
*Apresente o valor que representa o consumo médio do automóvel com 3 casas após a vírgula, seguido da mensagem "km/l".
* v_cm = Consumo Médio
* p_dtp = distância total percorrida
* p_tcg = total de combustível gasto

REPORT zz_exbee1014_37.

DATA: v_cm TYPE p DECIMALS 3.

PARAMETERS: p_dtp TYPE p,
            p_tcg TYPE p DECIMALS 1.

START-OF-SELECTION.

  PERFORM f_exibe_consumo.

FORM f_exibe_consumo.
  v_cm = p_dtp / p_tcg.
  WRITE: v_cm , 'km/l'.
ENDFORM.