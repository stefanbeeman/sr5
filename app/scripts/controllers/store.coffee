'use strict'

angular.module('sr5App')
    .controller 'StoreCtrl', ($scope, $routeParams, angularFire, Inventory) ->
        $scope.model = $routeParams.model
        $scope.action = $routeParams.action
        $scope.item = $routeParams.item
        $scope.fields = Inventory.fields[$scope.model]
        if $scope.model
            $list = []
            ref = new Firebase('//sr5.firebaseio.com/' + $scope.model)
            angularFire(ref, $scope, "list")