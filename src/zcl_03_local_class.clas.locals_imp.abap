*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

class lcl_connection definition. "create private. -removed to make it public

  PUBLIC SECTION.

    DATA       carrier_id    TYPE /dmo/carrier_id.
    DATA       connection_id TYPE /dmo/connection_id.
    CLASS-DATA conn_counter  TYPE i.

  PROTECTED SECTION.
  private section.

endclass.

class lcl_connection implementation.

endclass.
