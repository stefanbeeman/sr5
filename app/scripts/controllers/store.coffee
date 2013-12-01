'use strict'

angular.module('sr5App')
    .controller 'StoreCtrl', ($scope, $routeParams, angularFire, Inventory) ->
        $scope.model = $routeParams.model
        $scope.action = $routeParams.action
        $scope.itemId = $routeParams.item
        $scope.renderDamageCode = Inventory.renderDamageCode
        $scope.elements =
            fire: 'Fire'
            water: 'Water'

        if $scope.model?
            $scope.fields = Inventory.models[$scope.model].fields
            $scope.page_header = Inventory.models[$scope.model].header
            if $scope.itemId is 'add'
                $scope.list = []
                ref = new Firebase('//sr5.firebaseio.com/' + $scope.model)
                angularFire(ref, $scope, "list")
                $scope.new = {}

                $scope.add = ->
                    dupe = false
                    console.log $scope.list
                    for gear in $scope.list
                        console.log gear
                        if gear.name is $scope.new.name
                            dupe = true
                            break
                    console.log dupe
                    unless dupe
                        $scope.list.push($scope.new)
                    else
                        alert("The item's name needs to be unique.")

            else if $scope.itemId?
                $scope.item = {}
                ref = new Firebase('//sr5.firebaseio.com/' + $scope.model + '/' + $scope.itemId)
                angularFire(ref, $scope, "item")
            else
                $scope.list = []
                ref = new Firebase('//sr5.firebaseio.com/' + $scope.model)
                angularFire(ref, $scope, "list")
        else
            $scope.models = Inventory.models