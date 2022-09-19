* Leia um valor inteiro correspondente à idade de uma pessoa em dias e informe-a em anos, meses e dias
* Obs.: apenas para facilitar o cálculo, considere todo ano com 365 dias e todo mês com 30 dias. 
* Nos casos de teste nunca haverá uma situação que permite 12 meses e alguns dias, como 360, 363 ou 364. Este é apenas um exercício com objetivo de testar raciocínio matemático simples.
* Entrada
* O arquivo de entrada contém um valor inteiro.

REPORT zz_exbee1020_37.

DATA: v_idade    TYPE p,
      v_contano  TYPE p VALUE 0,
      v_contmes  TYPE p VALUE 0,
      v_contdias TYPE p VALUE 0.

PARAMETERS: p_dias TYPE p.


START-OF-SELECTION.

  PERFORM f_exibe_idade.

FORM f_exibe_idade .
  WHILE p_dias <> 0.

    IF p_dias GE 365.
      p_dias = p_dias - 365.
      v_contano = v_contano + 1.

    ELSEIF p_dias GE 30.
      p_dias = p_dias - 30.
      v_contmes = v_contmes + 1.

    ELSEIF p_dias LT 30 AND p_dias > 0.
      p_dias = p_dias - 1.
      v_contdias = v_contdias + 1.
    ENDIF.
  ENDWHILE.

  WRITE: v_contano , 'ano(s)',
  / v_contmes , 'mes(es)',
  / v_contdias , 'dia(s)'.
ENDFORM.