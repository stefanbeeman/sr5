'use strict'

angular.module('sr5App')
    .controller 'StoreCtrl', ($scope, $routeParams, angularFire, Inventory) ->
        $scope.model = $routeParams.model
        $scope.action = $routeParams.action
        $scope.itemId = $routeParams.item
        $scope.renderDamageCode = Inventory.renderDamageCode
        $scope.form = {}

        if $scope.itemId
            $scope.fields = Inventory.models[$scope.model].fields
            $scope.page_header = Inventory.models[$scope.model].header
            $scope.item = {}
            ref = new Firebase('//sr5.firebaseio.com/' + $scope.model + '/' + $scope.itemId)
            angularFire(ref, $scope, "item")
        else if $scope.model
            $scope.fields = Inventory.models[$scope.model].fields
            $scope.page_header = Inventory.models[$scope.model].header
            $scope.list = []
            ref = new Firebase('//sr5.firebaseio.com/' + $scope.model)
            angularFire(ref, $scope, "list")
        else
            $scope.models = Inventory.models