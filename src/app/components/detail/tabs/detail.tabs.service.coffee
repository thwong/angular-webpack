angular.module WS_COMPONENT
  .service 'DetailTabsService', (
    R
  ) ->
    'ngInject'

    @selectTab = (_tab) ->
      if @tabs?
        R.forEach (tab) ->
          tab.selected = tab.name is _tab.name
        , @tabs