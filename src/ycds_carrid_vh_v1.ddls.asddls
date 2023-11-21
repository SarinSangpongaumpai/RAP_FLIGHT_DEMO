@AbapCatalog.sqlViewName: 'YCDSCARRID_VH_V1'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for airline f4'
define view YCDS_CARRID_VH_V1
  as select from yscarr
{
  key carrid   as Carrid,
      carrname as Carrname
}
