@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for Travel item '
@Metadata.allowExtensions: true
// Highlight List table Column
define view entity YCDS_TRAVEL_ITEM_PROJECTION
  as projection on YCDS_TRAVEL_ITEM                                         
{
  key Carrid,
  key Connid,
  key Fldate,
      Price,
      Currency,
      Planetype,
      _travel : redirected to parent YCDS_TRAVEL_PROJECTION
}
