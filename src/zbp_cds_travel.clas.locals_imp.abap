CLASS lhc_travel_m DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR travel_m RESULT result.
    METHODS val_carrid FOR VALIDATE ON SAVE
      IMPORTING keys FOR travel_m~carrid.

ENDCLASS.

CLASS lhc_travel_m IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD val_carrid.

    DATA:ls_fail LIKE LINE OF failed-travel_m.

    READ ENTITIES OF ycds_travel IN LOCAL MODE
    ENTITY travel_m FIELDS ( carrid connid )
    WITH CORRESPONDING #( keys )
    RESULT DATA(lt_data).

    SELECT a~carrid FROM yscarr  AS a
    INNER JOIN @lt_data AS b
      ON a~carrid = b~carrid
      INTO TABLE @DATA(lt_check).
    IF sy-subrc <> 0.
      DATA(lv_msg) = me->new_message_with_text(
                       severity = if_abap_behv_message=>severity-error
                       text     = 'Invalid' ).
      APPEND VALUE #(  %msg = lv_msg
                       %element-carrid = if_abap_behv=>mk-on )
                                     TO reported-travel_m.

      APPEND ls_fail TO failed-travel_m.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
