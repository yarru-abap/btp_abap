@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Root View for ZJP_RAP_BOOK Table'
@Metadata.allowExtensions: true
define root view entity zmd_rap
  as select from z01_traveltable
{
  key travel_id     as Travel_Id,
  key booking_id    as Booking_Id,
      booking_date  as Booking_Date,
      customer_id   as Customer_Id,
      carrier_id    as Carrier_Id,
      connection_id as Connection_Id,
      flight_date   as Flight_Date,
      flight_price  as flight_price,
      currency_code as Currency_Code
}
