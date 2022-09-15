
* A jornada de trabalho semanal de um funcionário é de 40 horas.
* O funcionário que trabalhar mais de 40 horas receberá hora extra, cujo cálculo é o valor da hora regular com um acréscimo de 50%.
* Escreva um algoritmo que leia o número de horas trabalhadas em um mês, o salário total do funcionário, que deverá ser acrescido das horas extras, caso tenham sido trabalhadas. 
* (considere que o mês posssua 4 semanas exatas)

REPORT zz_exercicio18_37.

DATA: v_total_sal    TYPE p DECIMALS 2,
      v_horas_extras TYPE p,
      v_hmensal      TYPE p VALUE 160.

PARAMETERS: v_htrab TYPE p,
            v_shora TYPE p DECIMALS 2.

START-OF-SELECTION.

  PERFORM f_exibe_sal.

FORM f_exibe_sal.
  IF v_htrab GT 160.
    v_horas_extras = v_htrab - 160.
    v_total_sal = ( v_hmensal * v_shora ) + ( v_horas_extras * ( v_shora / 2 ) ).
  ELSEIF v_htrab LE 160.
    v_total_sal = v_hmensal * v_shora.
  ENDIF.

  WRITE: 'Salário Mensal: ' , v_total_sal.
ENDFORM.
=======
* A jornada de trabalho semanal de um funcionário é de 40 horas.
* O funcionário que trabalhar mais de 40 horas receberá hora extra, cujo cálculo é o valor da hora regular com um acréscimo de 50%.
* Escreva um algoritmo que leia o número de horas trabalhadas em um mês, o salário total do funcionário, que deverá ser acrescido das horas extras, caso tenham sido trabalhadas. 
* (considere que o mês posssua 4 semanas exatas)
>>>>>>> edecacd07e5ec2f70e79faac3ad86ff3d3a98b75
