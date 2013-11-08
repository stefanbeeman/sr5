'use strict'

angular.module('sr5App')
    .controller 'MeleeCtrl', ($scope, $routeParams, angularFire) ->
        if $routeParams? and $routeParams.id?
            ref = new Firebase('https://sr5.firebaseio.com/melee/' + $routeParams.id)
            $scope.item = {}
            angularFire(ref, $scope, "item")
        else
            ref = new Firebase('https://sr5.firebaseio.com/melee/')
            $scope.list = {}
            angularFire(ref, $scope, "list")

        $scope.damage = (weapon) ->
            dv = String(weapon.damage)
            if weapon.stun
                dv += 'S'
            else
                dv += 'P'
            return dv

        $scope.avail = (weapon) ->
            av = String(weapon.availability)
            if weapon.forbidden
                av += 'F'
            else if weapon.restricted
                av += 'R'
            return av