CLASS zjp_book_data_md DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS ZJP_BOOK_DATA_MD IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DELETE FROM z01_traveltable.
    INSERT z01_traveltable FROM (
        SELECT FROM /dmo/booking
        FIELDS
            travel_id         AS travel_id,
            booking_id        AS booking_id,
            booking_date      AS booking_date,
            customer_id       AS customer_id,
            carrier_id        AS carrier_id,
            connection_id     AS connection_id,
            flight_date       AS flight_date,
            flight_price      AS flight_price,
            currency_code     AS currency_code
         ORDER BY booking_id
         UP TO 10 ROWS ).

    COMMIT WORK.
    out->write( 'Booking data inserted'  ).
  ENDMETHOD.
ENDCLASS.
