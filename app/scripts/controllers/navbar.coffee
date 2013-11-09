'use strict'

angular.module('sr5App')
    .controller 'NavbarCtrl', ($scope, angularFireAuth) ->

        $scope.logout = ->
            angularFireAuth.logout()