CLASS zcl_03_methods DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_03_methods IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA connection TYPE REF TO lcl_connection.
    DATA connections TYPE TABLE OF REF TO lcl_connection.

* First Instance
**********************************************************************

    connection = NEW #(  ).

    TRY.
        connection->set_attributes(
        i_carrier_id = 'LH'
        i_connection_id = '0400'
        ).
*    CATCH cx_abap_invalid_value.


*        connection->carrier_id    = 'LH'.
*        connection->connection_id = '0400'.

        APPEND connection TO connections.

      CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).
    ENDTRY.

* Second Instance
**********************************************************************
    connection = NEW #(  ).

    TRY.
        connection->set_attributes(
        EXPORTING
        i_carrier_id = 'AA'
        i_connection_id = '0017'
        ).

* connection->carrier_id = 'AA'.
* connection->connection_id = '0017'.

        APPEND connection TO connections.

      CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).

    ENDTRY.


* Third Instance
**********************************************************************
    connection = NEW #(  ).

    try.
    connection->set_attributes(
      i_carrier_id    = 'SQ'
      i_connection_id = '0001'
    ).
*    CATCH cx_abap_invalid_value.

*    connection->carrier_id    = 'SQ'.
*    connection->connection_id = '0001'.

    APPEND connection TO connections.

    CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).

    ENDTRY.

    LOOP AT connections INTO connection.

      out->write( connection->get_output( ) ).

    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
