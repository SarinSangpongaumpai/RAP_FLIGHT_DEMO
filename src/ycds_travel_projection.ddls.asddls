@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for Travel '
@Metadata.allowExtensions: true
// Highlight List table Column
@ObjectModel.semanticKey:['Carrid','Connid']
@Search.searchable: true
define root view entity YCDS_TRAVEL_PROJECTION
  as projection on YCDS_TRAVEL
{
      // F4 help
      @Consumption.valueHelpDefinition: [{ entity:{
                                           element: 'Carrid',
                                           name: 'YCDS_CARRID_VH_V1'} }]
      // Merge text field
      @ObjectModel.text.element: [ 'carrname' ]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
  key Carrid,
  key Connid,
     // @Consumption.valueHelpDefinition: [{ entity:{
     //                                      element: 'cityfrom',
     //                                      name: 'YCDS_CITYFROM_VH_V1'} }]
      @ObjectModel.text.element: [ 'airpfrom' ]
      Cityfrom,
     // @Consumption.valueHelpDefinition: [{ entity:{
     //                                      element: 'cityto',
     //                                      name: 'YCDS_CITYTO_VH_V1'} }]
      @ObjectModel.text.element: [ 'airpto' ]
      Cityto,
      Deptime,
      Arrtime,
      Period,

      //Image display
      //@Semantics.imageUrl: true
      //imgurl,



      @UI.hidden: true
      Airpfrom,
      @UI.hidden: true
      Airpto,
      //@UI.hidden: true
      //critically_date,
      @UI.hidden: true
      _Airline.carrname as carrname,
      _Flight : redirected to composition child YCDS_TRAVEL_ITEM_PROJECTION
}
