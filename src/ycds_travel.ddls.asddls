@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for Travel'
define root view entity YCDS_TRAVEL
  as select from yspfli as spfli
  association [0..1] to yscarr           as _Airline on $projection.Carrid = _Airline.carrid
  composition [0..*] of YCDS_TRAVEL_ITEM as _Flight
{
  key carrid                   as Carrid,
  key connid                   as Connid,
      spfli.cityfrom           as Cityfrom,
      spfli.airpfrom           as Airpfrom,
      spfli.cityto             as Cityto,
      spfli.airpto             as Airpto,
      spfli.deptime            as Deptime,
      spfli.arrtime            as Arrtime,
      spfli.period             as Period,

      //case period
      //     when 0 then 3 //Less than 1 day  = Green
      //     when 1 then 2 //More than 1 day  = Yellow
      //     when 2 then 1 //More than 2 days = Red
      //   else 0
      // end                                 as critically_date,
      //Image display
      // cast('https://github.githubassets.com/images/modules/open_graph/github-octocat.png'
      // as abap.char( 256 ))                as imgurl,
      @Semantics.user.createdBy: true
      spfli.createdby          as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      spfli.createat           as CreatedAt,
      @Semantics.user.lastChangedBy: true
      spfli.lastchangedby      as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      spfli.lastchangedat      as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      spfli.locallastchangedat as LocalLastChangedAt,

      _Airline,
      _Flight
}
