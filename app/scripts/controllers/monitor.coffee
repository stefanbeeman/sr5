'use strict'

angular.module('sr5App')
    .controller 'MonitorCtrl', ($scope, $rootScope) ->
        
        $scope.$on 'pc:get', ->
            $scope.physicalBoxes = 8 + Math.ceil($rootScope.pc.stats.body/2)
            $scope.stunBoxes = 8 + Math.ceil($rootScope.pc.stats.willpower/2)