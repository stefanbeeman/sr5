'use strict'

angular.module('sr5App')
    .controller 'IndexCtrl', ($scope, angularFire, angularFireAuth) ->

        $scope.pc = null
        $scope.user = null

        authRef = new Firebase("https://sr5.firebaseio.com/")
        angularFireAuth.initialize authRef,
            scope: $scope, 
            name: "user"

        get_pc = ->
            ref = new Firebase('https://sr5.firebaseio.com/pc/' + $scope.user.id)
            angularFire(ref, $scope, "pc")

        $scope.$on 'angularFireAuth:login', (e, user) ->
            $scope.$apply ->
                get_pc()