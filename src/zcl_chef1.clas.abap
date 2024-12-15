CLASS zcl_chef1 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    EVENTS call_for_waiter .

    METHODS call_for_service .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_chef1 IMPLEMENTATION.


  METHOD call_for_service.

    WRITE: / |Chef calling waiter event|.
    RAISE EVENT call_for_waiter.
    WRITE: / |Chef calling waiter event complete|.
    WRITE: / |Chef calling waiter event complete 2|.
    ULINE.

  ENDMETHOD.
ENDCLASS.
