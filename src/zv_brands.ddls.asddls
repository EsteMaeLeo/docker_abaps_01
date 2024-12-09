@AbapCatalog.sqlViewName: 'ZV_BRANDS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view z_b_brands
  as select from zrent_brands_lmj
{
  key brand as Brand,
      url   as ImageCar
}
