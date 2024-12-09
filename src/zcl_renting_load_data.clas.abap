CLASS zcl_renting_load_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_renting_load_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_brands    TYPE TABLE OF zrent_brands_lmj,
          lt_cars      TYPE TABLE OF zrent_cars_lmj,
          lt_customers TYPE TABLE OF zrent_cust_lmj.

    out->write( 'Renting Loading Data' ).
    lt_brands = VALUE #(
        ( brand = 'ASTON MARTIN' url = 'https://www.autobild.es/sites/autobild.es/public/styles/main_element/public/dc/fotos/Aston_Martin-DB9_2013_01.jpg?itok=bGlXq8UF' )
        ( brand = 'AUDI' url = 'https://acroadtrip.blob.core.windows.net/catalogo-imagenes/xl/RT_V_8ca58632abf44d0db6f1b476fd54eec2.jpg' )
        ( brand = 'BENTLEY' url = 'https://www.autobild.es/sites/autobild.es/public/styles/main_element/public/dc/fotos/Bentley-Continental_GT-2018-C01.jpg?itok=_kP_edH4' )
        ( brand = 'BUGATTI' url = 'https://wtfonline.mx/wp-content/uploads/2018/12/buggatti.jpg' )
        ( brand = 'FERRARI' url = 'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5dd552852cdb32285a785d2e-line-up-ferrari-sf90-stradale?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=800&height=600' )
        ( brand = 'FORD' url = 'https://www.elsoldemexico.com.mx/deportes/automotriz/1i0d6x-02_2019.png/ALTERNATES/LANDSCAPE_400/02_2019.png' )
        ( brand = 'HONDA' url = 'https://cdn.autobild.es/sites/navi.axelspringer.es/public/styles/480/public/media/image/2017/06/643677-honda-civic-type-r-2017.jpg?itok=pmaP2b_K' )
        ( brand = 'JEEP' url = 'https://s.aolcdn.com/commerce/autodata/images/USC80JES162A021001.jpg' )
        ( brand = 'KIA' url = 'https://www.kia.com/content/dam/kwcms/mx/es/images/vehicles/thumnails_2020/menu_showrooms/Perfil-Home-Stinger.png' )
        ( brand = 'MERCEDES' url = 'https://www.me.mercedes-benz.com.mx/es/passengercars/_jcr_content/image.MQ6.2.2x.20190815083805.png' )
        ( brand = 'MINI' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg' )
        ( brand = 'SEAT' url = 'https://www.seat.mx/content/countries/mx/seat-website/es/modelos/ibiza/_jcr_content.resizedViewPort.noscale.rangeMiniature.png' )
        ( brand = 'VW' url = 'https://www.vwimg.com/iris/iris?bkgnd=transparent&fabric=BC&paint=0Q0Q&pov=E06,CGN&quality=100&vehicle=2020_BU32MS_2019_10_27&Resp=png&width=510&crop=20,90,450,232' )
        ( brand = 'BMW' url = 'https://www.bmw.com.mx/content/dam/bmw/common/all-models/3-series/sedan/2018/navigation/bmw-3-series-modellfinder.png' ) ).

    DELETE FROM zrent_brands_lmj.
    INSERT zrent_brands_lmj FROM TABLE @lt_brands.

    SELECT * FROM zrent_brands_lmj INTO TABLE @lt_brands.
    out->write( sy-dbcnt ).
    out->write( lt_brands ).
    out->write( 'Data inserted successfully on ZRENT_BRANDS_LMJ table!' ).

** CARS**
    lt_cars = VALUE #(
    ( plate = '1246GSA' brand = 'BMW' model = 'SERIE 4' color = 'BLANCO' engine = '2.5' power = '210' unit_power = 'CV' fuel = 'GASOLINA' consumption = '7.00'
        date_manfacture = '20200418' doors = '5' price = '210' currency = 'USD' rent = 'X' rent_from = '20211201' rent_to  = '20241231' )
    ( plate = '2174FHF' brand = 'KIA' model = 'CEE''D' color = 'AZUL' engine = '4.2' power = '340' unit_power = 'CV' fuel = 'GASOLINA' consumption = '10.00'
        date_manfacture = '20200617' doors = '5' price = '160' currency = 'USD' rent = 'X' rent_from = '20200801' rent_to  = '20250831' )
    ( plate = '2356FSF' brand = 'AUDI' model = 'A8' color = 'BLANCO' engine = '3.9' power = '140' unit_power = 'CV' fuel = 'ELECTRIC' consumption = '00.00'
        date_manfacture = '20200304' doors = '3' price = '140' currency = 'USD' rent = 'X' rent_from = '20210701' rent_to  = '20240708' )
    ( plate = '2392JFH' brand = 'JEEP' model = 'GRAND CHEROKEE' color = 'BLANCO' engine = '3.6' power = '176' unit_power = 'CV' fuel = 'GASOLINA' consumption = '12.00'
        date_manfacture = '20200924' doors = '5' price = '160' currency = 'USD' rent = 'X' rent_from = '20200601' rent_to  = '20251001' )
    ( plate = '2837KFF' brand = 'MERCEDES' model = 'CLASE B' color = 'NEGRO' engine = '2.0' power = '200' unit_power = 'CV' fuel = 'GASOLINA' consumption = '7.00'
        date_manfacture = '20200726' doors = '5' price = '160' currency = 'USD' rent = 'X' rent_from = '20200301' rent_to  = '20250301' )
    ( plate = '2837SUF' brand = 'MERCEDES' model = 'CLASE C' color = 'AMARILLO' engine = '3.0' power = '220' unit_power = 'CV' fuel = 'GASOLINA' consumption = '6.00'
        date_manfacture = '20200614' doors = '5' price = '180' currency = 'USD' rent = 'X' rent_from = '20211201' rent_to  = '20241206' )
    ( plate = '2847JGH' brand = 'HONDA' model = 'CARENS' color = 'NEGRO' engine = '1.9' power = '180' unit_power = 'CV' fuel = 'DIESEL' consumption = '5.00'
        date_manfacture = '20210716' doors = '5' price = '180' currency = 'USD' rent = 'X' rent_from = '20211201' rent_to  = '20241206' )
    ( plate = '29348KJ' brand = 'MINI' model = 'CABRIO' color = 'AMARILLO' engine = '2.0' power = '240' unit_power = 'CV' fuel = 'ELECTRIC' consumption = '0.00'
        date_manfacture = '20200812' doors = '3' price = '150' currency = 'USD' rent = 'X' rent_from = '20211106' rent_to  = '20241206' )
    ( plate = '29348yu' brand = 'MINI' model = 'CABRIO' color = 'ROJO' engine = '2.0' power = '240' unit_power = 'CV' fuel = 'ELECTRIC' consumption = '0.00'
        date_manfacture = '20200812' doors = '3' price = '150' currency = 'USD' rent = 'X' rent_from = '20211106' rent_to  = '' ) ).

    DELETE FROM zrent_cars_lmj.
    INSERT zrent_cars_lmj FROM TABLE @lt_cars.

    SELECT * FROM zrent_cars_lmj INTO TABLE @lt_cars.
    out->write( sy-dbcnt ).
    out->write( lt_cars ).
    out->write( 'Data inserted successfully on ZRENT_CARS_LMJ table!' ).

** CUSTOMERS**
    lt_customers = VALUE #(
        ( doc_id = '005638984K' plate = '8764FGH' name = 'Olivia' last_name = 'Allan' email = 'olivia.allan@email.com' cntr_type = 'C1' )
        ( doc_id = '982356739N' plate = '8764FGH' name = 'Matt' last_name = 'Slater' email = 'matt.slater@email.com' cntr_type = 'C3' )
        ( doc_id = '453532543O' plate = '8764FGH' name = 'Vanessa' last_name = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C1' )
        ( doc_id = '005632984R' plate = '1246GSA' name = 'John' last_name = 'Allan' email = 'john.allan@email.com' cntr_type = 'C3' )
        ( doc_id = '982367739N' plate = '1246GSA' name = 'Clark' last_name = 'Allan' email = 'clark.slater@email.com' cntr_type = 'C2' )
        ( doc_id = '340958439D' plate = '29348KJ' name = 'Michael' last_name = 'Short' email = 'michael.short@email.com' cntr_type = 'C1' )
        ( doc_id = '964356739N' plate = '29348KJ' name = 'Robert' last_name = 'Allan' email = 'robert.slater@email.com' cntr_type = 'C1' )
        ( doc_id = '340458439D' plate = '2847JGH' name = 'Cole' last_name = 'Short' email = 'cole.short@email.com' cntr_type = 'C2' )
        ( doc_id = '340958438D' plate = '2827SAF' name = 'George' last_name = 'Short' email = 'george.short@email.com' cntr_type = 'C3' )
        ( doc_id = '859675368G' plate = '2827SAF' name = 'Sonny' last_name = 'Wright' email = 'sonny.wright@email.com' cntr_type = 'C2')
        ( doc_id = '859675388V' plate = '2827SAF' name = 'Evelyn' last_name = 'Wright' email = 'evelyn.wright@email.com' cntr_type = 'C2' )
        ( doc_id = '340952439D' plate = '2837KFF' name = 'Avery' last_name = 'Short' email = 'avery.short@email.com' cntr_type = 'C4' )
        ( doc_id = '859675388G' plate = '2837KFF' name = 'Madison' last_name = 'Wright' email = 'madison.wright@email.com' cntr_type = 'C1' )
        ( doc_id = '982656739N' plate = '2837SUF' name = 'Matt' last_name = 'Slater' email = 'matt.slater@email.com' cntr_type = 'C3' )
        ( doc_id = '345093450E' plate = '2425SFA' name = 'Sue' last_name = 'Sanderson' email = 'sue.sanderson@email.com' cntr_type = 'C1' )
        ( doc_id = '852367586F' plate = '2425SFA' name = 'Eric' last_name = 'Berry' email = 'eric.berry@email.com' cntr_type = 'C4' )
        ( doc_id = '345093850A' plate = '2392JFH' name = 'Lily' last_name = 'Sanderson' email = 'lily.sanderson@email.com' cntr_type = 'C3' )
        ( doc_id = '489632862G' plate = '2329HFS' name = 'Neil' last_name = 'Welch' email = 'neil.welch@email.com' cntr_type = 'C2' )
        ( doc_id = '345234534M' plate = '2329HFS' name = 'Lily' last_name = 'Langdon' email = 'lily.langdon@email.com' cntr_type = 'C1' )
        ( doc_id = '453572543O' plate = '2329HFS' name = 'Vanessa' last_name = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C4' )
        ( doc_id = '345839534R' plate = '2356FSF' name = 'Andrew' last_name = 'Langdon' email = 'andrew.langdon@email.com' cntr_type = 'C2' )
        ( doc_id = '852327586F' plate = '2392JFH' name = 'Addison' last_name = 'Berry' email = 'addison.berry@email.com' cntr_type = 'C2' )
        ( doc_id = '345831534R' plate = '2174FHF' name = 'Lucy' last_name = 'Langdon' email = 'lucy.langdon@email.com' cntr_type = 'C0' )
        ( doc_id = '489612882D' plate = '2174FHF' name = 'Julian' last_name = 'Welch' email = 'julian.welch@email.com' cntr_type = 'C1' )
        ( doc_id = '348941597P' plate = '2188SJS' name = 'Cooper' last_name = 'Davies' email = 'cooper.davies@email.com' cntr_type = 'C1' )
        ( doc_id = '348947997P' plate = '1246GSA' name = 'Lillian' last_name = 'Davies' email = 'lillian.davies@email.com' cntr_type = 'C2' )
        ( doc_id = '430958233A' plate = '2174FHF' name = 'Wendy' last_name = 'Short' email = 'wendy.short@email.com' cntr_type = 'C4' )
        ( doc_id = '453832543O' plate = '4545ABC' name = 'Vanessa' last_name = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C1' )
        ( doc_id = '982124739N' plate = '2148AFS' name = 'Tyler' last_name = 'Slater' email = 'tyler.slater@email.com' cntr_type = 'C3' )
        ( doc_id = '982356839W' plate = '5235HER' name = 'Parker' last_name = 'Slater' email = 'parker.slater@email.com' cntr_type = 'C3' ) ).

    DELETE FROM zrent_cust_lmj.
    INSERT zrent_cust_lmj FROM TABLE @lt_customers.

    SELECT * FROM zrent_cust_lmj INTO TABLE @lt_customers.
    out->write( sy-dbcnt ).
    out->write( lt_customers ).
    out->write( 'Data inserted successfully on ZRENT_CUST_LMJ table!' ).
  ENDMETHOD.

ENDCLASS.
