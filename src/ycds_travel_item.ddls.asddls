@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for Travel'
define view entity YCDS_TRAVEL_ITEM
  as select from ysflight as sflight
  association to parent YCDS_TRAVEL as _travel on  $projection.Carrid = _travel.Carrid
                                               and $projection.Connid = _travel.Connid
{
  key carrid                   as Carrid,
  key connid                   as Connid,
  key fldate                   as Fldate,
      price                    as Price,
      currency                 as Currency,
      planetype                as Planetype,
      @Semantics.user.createdBy: true
      sflight.createdby          as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      sflight.createat           as CreatedAt,
      @Semantics.user.lastChangedBy: true
      sflight.lastchangedby      as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      sflight.lastchangedat      as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      sflight.locallastchangedat as LocalLastChangedAt,
      _travel
}
