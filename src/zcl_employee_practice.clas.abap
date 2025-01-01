CLASS zcl_employee_practice DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_employee_id TYPE string OPTIONAL.

    CLASS-METHODS class_constructor.

    METHODS get_employee_id RETURNING VALUE(rv_employee_id) TYPE string.

    CLASS-DATA company TYPE string READ-ONLY.

    CLASS-DATA: log type string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA employee_id TYPE string.
ENDCLASS.



CLASS zcl_employee_practice IMPLEMENTATION.

  METHOD constructor.
    me->employee_id = iv_employee_id.
    log = |{ log }-Instance contructor { employee_id }-->|.
  ENDMETHOD.

  METHOD get_employee_id.

    rv_employee_id = me->employee_id.

  ENDMETHOD.

  METHOD class_constructor.

    "zcl_03_employee_lm01=>company = 'Walmart'.
    log = |{ log }-Static Constructor-->|.
  ENDMETHOD.

ENDCLASS.

