CLASS ydemo_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    METHODS create_spfli.
    METHODS create_scarr.
    METHODS create_sflight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS YDEMO_FLIGHT IMPLEMENTATION.


  METHOD create_scarr.
    DATA:lt_tab TYPE TABLE OF yscarr.
    lt_tab = VALUE #(  ( carrid = 'AA' carrname = 'American Airlines' )
( carrid = 'AB' carrname = 'Air Berlin' )
( carrid = 'AC' carrname = 'Air Canada' )
( carrid = 'AF' carrname = 'Air France' )
( carrid = 'AZ' carrname = 'Alitalia' )
( carrid = 'BA' carrname = 'British Airways' )
( carrid = 'CO' carrname = 'Continental Airlines' )
( carrid = 'DL' carrname = 'Delta Airlines' )
( carrid = 'FJ' carrname = 'Air Pacific' )
( carrid = 'JL' carrname = 'Japan Airlines' )
( carrid = 'LH' carrname = 'Lufthansa' )
( carrid = 'NG' carrname = 'Lauda Air' )
( carrid = 'NW' carrname = 'Northwest Airlines' )
( carrid = 'QF' carrname = 'Qantas Airways' )
( carrid = 'SA' carrname = 'South African Air.' )
( carrid = 'SQ' carrname = 'Singapore Airlines' )
( carrid = 'SR' carrname = 'Swiss' )
( carrid = 'UA' carrname = 'United Airlines' ) ).
    MODIFY yscarr FROM TABLE @lt_tab.
    COMMIT WORK AND WAIT.
  ENDMETHOD.


  METHOD create_sflight.
  data:lt_tab type table of ysflight.
lt_tab = value #( ( CARRID = 'DL' CONNID = '106' FLDATE = '20230117' PRICE = '600.01' CURRENCY = 'USD' PLANETYPE = 'A340-600')
( CARRID = 'DL' CONNID = '1699' FLDATE = '20230117' PRICE = '422.94' CURRENCY = 'USD' PLANETYPE = '767-200')
( CARRID = 'DL' CONNID = '1984' FLDATE = '20230117' PRICE = '422.94' CURRENCY = 'USD' PLANETYPE = 'A380-800')
( CARRID = 'LH' CONNID = '402' FLDATE = '20230117' PRICE = '666' CURRENCY = 'EUR' PLANETYPE = 'A380-800')
( CARRID = 'UA' CONNID = '3517' FLDATE = '20230117' PRICE = '611.01' CURRENCY = 'USD' PLANETYPE = '747-400')
( CARRID = 'AZ' CONNID = '788' FLDATE = '20230118' PRICE = '1030.00' CURRENCY = 'EUR' PLANETYPE = 'A380-800')
( CARRID = 'SQ' CONNID = '158' FLDATE = '20230118' PRICE = '494.79' CURRENCY = 'SGD' PLANETYPE = 'A320-200')
( CARRID = 'UA' CONNID = '3516' FLDATE = '20230118' PRICE = '611.01' CURRENCY = 'USD' PLANETYPE = 'A380-800')
( CARRID = 'AA' CONNID = '17' FLDATE = '20230119' PRICE = '422.94' CURRENCY = 'USD' PLANETYPE = '747-400')
( CARRID = 'AZ' CONNID = '555' FLDATE = '20230119' PRICE = '185' CURRENCY = 'EUR' PLANETYPE = 'A319-100')
( CARRID = 'AZ' CONNID = '789' FLDATE = '20230119' PRICE = '1030.00' CURRENCY = 'EUR' PLANETYPE = 'A380-800')
( CARRID = 'AZ' CONNID = '790' FLDATE = '20230119' PRICE = '1014.00' CURRENCY = 'EUR' PLANETYPE = '747-400')
( CARRID = 'QF' CONNID = '6' FLDATE = '20230119' PRICE = '788.64' CURRENCY = 'AUD' PLANETYPE = '767-200')
( CARRID = 'SQ' CONNID = '15' FLDATE = '20230119' PRICE = '2320.04' CURRENCY = 'SGD' PLANETYPE = 'A380-800')
( CARRID = 'SQ' CONNID = '2' FLDATE = '20230120' PRICE = '2320.04' CURRENCY = 'SGD' PLANETYPE = 'A380-800')
( CARRID = 'SQ' CONNID = '988' FLDATE = '20230120' PRICE = '910.15' CURRENCY = 'SGD' PLANETYPE = 'A340-600')
( CARRID = 'UA' CONNID = '941' FLDATE = '20230120' PRICE = '879.82' CURRENCY = 'USD' PLANETYPE = '767-200')
( CARRID = 'AA' CONNID = '64' FLDATE = '20230121' PRICE = '422.94' CURRENCY = 'USD' PLANETYPE = 'A340-600')
( CARRID = 'JL' CONNID = '407' FLDATE = '20230121' PRICE = '106136' CURRENCY = 'JPY' PLANETYPE = 'A380-800')
( CARRID = 'LH' CONNID = '401' FLDATE = '20230121' PRICE = '666' CURRENCY = 'EUR' PLANETYPE = '767-200')
( CARRID = 'QF' CONNID = '5' FLDATE = '20230121' PRICE = '788.64' CURRENCY = 'AUD' PLANETYPE = 'A340-600')
( CARRID = 'UA' CONNID = '3504' FLDATE = '20230121' PRICE = '879.82' CURRENCY = 'USD' PLANETYPE = 'A380-800')
( CARRID = 'JL' CONNID = '408' FLDATE = '20230122' PRICE = '106136' CURRENCY = 'JPY' PLANETYPE = '747-400')
( CARRID = 'LH' CONNID = '400' FLDATE = '20230122' PRICE = '666' CURRENCY = 'EUR' PLANETYPE = 'A340-600')
( CARRID = 'LH' CONNID = '2402' FLDATE = '20230122' PRICE = '242' CURRENCY = 'EUR' PLANETYPE = 'A380-800')
( CARRID = 'LH' CONNID = '2407' FLDATE = '20230122' PRICE = '242' CURRENCY = 'EUR' PLANETYPE = 'A320-200')
( CARRID = 'DL' CONNID = '106' FLDATE = '20230218' PRICE = '611.01' CURRENCY = 'USD' PLANETYPE = 'A340-600')
( CARRID = 'DL' CONNID = '1699' FLDATE = '20230218' PRICE = '422.94' CURRENCY = 'USD' PLANETYPE = '767-200')
( CARRID = 'DL' CONNID = '1984' FLDATE = '20230218' PRICE = '422.94' CURRENCY = 'USD' PLANETYPE = 'A380-800')
( CARRID = 'LH' CONNID = '402' FLDATE = '20230218' PRICE = '666' CURRENCY = 'EUR' PLANETYPE = 'A380-800')
( CARRID = 'UA' CONNID = '3517' FLDATE = '20230218' PRICE = '611.01' CURRENCY = 'USD' PLANETYPE = '747-400')
( CARRID = 'AZ' CONNID = '788' FLDATE = '20230219' PRICE = '1030.00' CURRENCY = 'EUR' PLANETYPE = 'A380-800')
( CARRID = 'SQ' CONNID = '158' FLDATE = '20230219' PRICE = '494.79' CURRENCY = 'SGD' PLANETYPE = 'A320-200')
( CARRID = 'UA' CONNID = '3516' FLDATE = '20230219' PRICE = '611.01' CURRENCY = 'USD' PLANETYPE = 'A380-800')
( CARRID = 'AA' CONNID = '17' FLDATE = '20230220' PRICE = '422.94' CURRENCY = 'USD' PLANETYPE = '747-400')
( CARRID = 'AZ' CONNID = '555' FLDATE = '20230220' PRICE = '185' CURRENCY = 'EUR' PLANETYPE = 'A319-100')
( CARRID = 'AZ' CONNID = '789' FLDATE = '20230220' PRICE = '1030.00' CURRENCY = 'EUR' PLANETYPE = 'A380-800')
( CARRID = 'AZ' CONNID = '790' FLDATE = '20230220' PRICE = '1014.00' CURRENCY = 'EUR' PLANETYPE = '747-400')
( CARRID = 'QF' CONNID = '6' FLDATE = '20230220' PRICE = '788.64' CURRENCY = 'AUD' PLANETYPE = '767-200')
( CARRID = 'SQ' CONNID = '15' FLDATE = '20230220' PRICE = '2320.04' CURRENCY = 'SGD' PLANETYPE = 'A380-800')
( CARRID = 'SQ' CONNID = '2' FLDATE = '20230221' PRICE = '2320.04' CURRENCY = 'SGD' PLANETYPE = 'A380-800')
( CARRID = 'SQ' CONNID = '988' FLDATE = '20230221' PRICE = '910.15' CURRENCY = 'SGD' PLANETYPE = 'A340-600')
( CARRID = 'UA' CONNID = '941' FLDATE = '20230221' PRICE = '879.82' CURRENCY = 'USD' PLANETYPE = '767-200')
( CARRID = 'AA' CONNID = '64' FLDATE = '20230222' PRICE = '422.94' CURRENCY = 'USD' PLANETYPE = 'A340-600')
( CARRID = 'JL' CONNID = '407' FLDATE = '20230222' PRICE = '106136' CURRENCY = 'JPY' PLANETYPE = 'A380-800')
( CARRID = 'LH' CONNID = '401' FLDATE = '20230222' PRICE = '666' CURRENCY = 'EUR' PLANETYPE = '767-200')
( CARRID = 'QF' CONNID = '5' FLDATE = '20230222' PRICE = '788.64' CURRENCY = 'AUD' PLANETYPE = 'A340-600')
( CARRID = 'UA' CONNID = '3504' FLDATE = '20230222' PRICE = '879.82' CURRENCY = 'USD' PLANETYPE = 'A380-800')
( CARRID = 'JL' CONNID = '408' FLDATE = '20230223' PRICE = '106136' CURRENCY = 'JPY' PLANETYPE = '747-400')
( CARRID = 'LH' CONNID = '400' FLDATE = '20230223' PRICE = '666' CURRENCY = 'EUR' PLANETYPE = 'A340-600')
( CARRID = 'LH' CONNID = '2402' FLDATE = '20230223' PRICE = '242' CURRENCY = 'EUR' PLANETYPE = 'A380-800')
( CARRID = 'LH' CONNID = '2407' FLDATE = '20230223' PRICE = '242' CURRENCY = 'EUR' PLANETYPE = 'A320-200')
  ).
  "delete from ysflight where price > 10.
       MODIFY ysflight from table @lt_tab.
       commit WORK AND WAIT.
  ENDMETHOD.


  METHOD create_spfli.
    DATA:lt_tab TYPE TABLE OF yspfli.

    lt_tab =  VALUE #(
( carrid   = 'AA'
  connid   = '17'
  cityfrom = 'NEW YORK'
  airpfrom = 'JFK'
  cityto   = 'SAN FRANCISCO'
  airpto   = 'SFO'
  deptime  = '110000'
  arrtime  = '140100'
  period   = '0'
)

( carrid   = 'AA'
  connid   = '64'
  cityfrom = 'SAN FRANCISCO'
  airpfrom = 'SFO'
  cityto   = 'NEW YORK'
  airpto   = 'JFK'
  deptime  = '090000'
  arrtime  = '172100'
  period   = '0'
)

( carrid   = 'AZ'
  connid   = '555'
  cityfrom = 'ROME'
  airpfrom = 'FCO'
  cityto   = 'FRANKFURT'
  airpto   = 'FRA'
  deptime  = '190000'
  arrtime  = '210500'
  period   = '0'
)

( carrid   = 'AZ'
  connid   = '788'
  cityfrom = 'ROME'
  airpfrom = 'FCO'
  cityto   = 'TOKYO'
  airpto   = 'TYO'
  deptime  = '120000'
  arrtime  = '085500'
  period   = '1'
)

( carrid   = 'AZ'
  connid   = '789'
  cityfrom = 'TOKYO'
  airpfrom = 'TYO'
  cityto   = 'ROME'
  airpto   = 'FCO'
  deptime  = '114500'
  arrtime  = '192500'
  period   = '0'
)

( carrid   = 'AZ'
  connid   = '790'
  cityfrom = 'ROME'
  airpfrom = 'FCO'
  cityto   = 'OSAKA'
  airpto   = 'KIX'
  deptime  = '103500'
  arrtime  = '081000'
  period   = '1'
)

( carrid   = 'DL'
  connid   = '106'
  cityfrom = 'NEW YORK'
  airpfrom = 'JFK'
  cityto   = 'FRANKFURT'
  airpto   = 'FRA'
  deptime  = '193500'
  arrtime  = '093000'
  period   = '1'
)

( carrid   = 'DL'
  connid   = '1699'
  cityfrom = 'NEW YORK'
  airpfrom = 'JFK'
  cityto   = 'SAN FRANCISCO'
  airpto   = 'SFO'
  deptime  = '171500'
  arrtime  = '203700'
  period   = '0'
)

( carrid   = 'DL'
  connid   = '1984'
  cityfrom = 'SAN FRANCISCO'
  airpfrom = 'SFO'
  cityto   = 'NEW YORK'
  airpto   = 'JFK'
  deptime  = '100000'
  arrtime  = '182500'
  period   = '0'
)

( carrid   = 'JL'
  connid   = '407'
  cityfrom = 'TOKYO'
  airpfrom = 'NRT'
  cityto   = 'FRANKFURT'
  airpto   = 'FRA'
  deptime  = '133000'
  arrtime  = '173500'
  period   = '0'
)

( carrid   = 'JL'
  connid   = '408'
  cityfrom = 'FRANKFURT'
  airpfrom = 'FRA'
  cityto   = 'TOKYO'
  airpto   = 'NRT'
  deptime  = '202500'
  arrtime  = '154000'
  period   = '1'
)

( carrid   = 'LH'
  connid   = '400'
  cityfrom = 'FRANKFURT'
  airpfrom = 'FRA'
  cityto   = 'NEW YORK'
  airpto   = 'JFK'
  deptime  = '101000'
  arrtime  = '113400'
  period   = '0'
)

( carrid   = 'LH'
  connid   = '401'
  cityfrom = 'NEW YORK'
  airpfrom = 'JFK'
  cityto   = 'FRANKFURT'
  airpto   = 'FRA'
  deptime  = '183000'
  arrtime  = '074500'
  period   = '1'
)

( carrid   = 'LH'
  connid   = '402'
  cityfrom = 'FRANKFURT'
  airpfrom = 'FRA'
  cityto   = 'NEW YORK'
  airpto   = 'JFK'
  deptime  = '133000'
  arrtime  = '150500'
  period   = '0'
)

( carrid   = 'LH'
  connid   = '2402'
  cityfrom = 'FRANKFURT'
  airpfrom = 'FRA'
  cityto   = 'BERLIN'
  airpto   = 'SXF'
  deptime  = '103000'
  arrtime  = '113500'
  period   = '0'
)

( carrid   = 'LH'
  connid   = '2407'
  cityfrom = 'BERLIN'
  airpfrom = 'TXL'
  cityto   = 'FRANKFURT'
  airpto   = 'FRA'
  deptime  = '071000'
  arrtime  = '081500'
  period   = '0'
)

( carrid   = 'QF'
  connid   = '5'
  cityfrom = 'SINGAPORE'
  airpfrom = 'SIN'
  cityto   = 'FRANKFURT'
  airpto   = 'FRA'
  deptime  = '225000'
  arrtime  = '053500'
  period   = '1'
)

( carrid   = 'QF'
  connid   = '6'
  cityfrom = 'FRANKFURT'
  airpfrom = 'FRA'
  cityto   = 'SINGAPORE'
  airpto   = 'SIN'
  deptime  = '205500'
  arrtime  = '150500'
  period   = '1'
)

( carrid   = 'SQ'
  connid   = '2'
  cityfrom = 'SINGAPORE'
  airpfrom = 'SIN'
  cityto   = 'SAN FRANCISCO'
  airpto   = 'SFO'
  deptime  = '170000'
  arrtime  = '192500'
  period   = '0'
)

( carrid   = 'SQ'
  connid   = '15'
  cityfrom = 'SAN FRANCISCO'
  airpfrom = 'SFO'
  cityto   = 'SINGAPORE'
  airpto   = 'SIN'
  deptime  = '160000'
  arrtime  = '024500'
  period   = '2'
)

( carrid   = 'SQ'
  connid   = '158'
  cityfrom = 'SINGAPORE'
  airpfrom = 'SIN'
  cityto   = 'JAKARTA'
  airpto   = 'JKT'
  deptime  = '152500'
  arrtime  = '160000'
  period   = '0'
)

( carrid   = 'SQ'
  connid   = '988'
  cityfrom = 'SINGAPORE'
  airpfrom = 'SIN'
  cityto   = 'TOKYO'
  airpto   = 'TYO'
  deptime  = '163500'
  arrtime  = '001500'
  period   = '1'
)

( carrid   = 'UA'
  connid   = '941'
  cityfrom = 'FRANKFURT'
  airpfrom = 'FRA'
  cityto   = 'SAN FRANCISCO'
  airpto   = 'SFO'
  deptime  = '143000'
  arrtime  = '170600'
  period   = '0'
)

( carrid   = 'UA'
  connid   = '3504'
  cityfrom = 'SAN FRANCISCO'
  airpfrom = 'SFO'
  cityto   = 'FRANKFURT'
  airpto   = 'FRA'
  deptime  = '150000'
  arrtime  = '103000'
  period   = '1'
)

( carrid   = 'UA'
  connid   = '3516'
  cityfrom = 'NEW YORK'
  airpfrom = 'JFK'
  cityto   = 'FRANKFURT'
  airpto   = 'FRA'
  deptime  = '162000'
  arrtime  = '054500'
  period   = '1'
)

( carrid   = 'UA'
  connid   = '3517'
  cityfrom = 'FRANKFURT'
  airpfrom = 'FRA'
  cityto   = 'NEW YORK'
  airpto   = 'JFK'
  deptime  = '104000'
  arrtime  = '125500'
  period   = '0'
)
    ).
    MODIFY yspfli FROM TABLE @lt_tab.
    COMMIT WORK AND WAIT.
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

    create_scarr( ).
    create_sflight( ).
    create_spfli( ).
  ENDMETHOD.
ENDCLASS.
