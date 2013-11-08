'use strict'

angular.module('sr5App')
    .controller 'NavbarCtrl', (simpleLogin, $scope) ->

        $scope.current_user = null

        $scope.logout = ->
            simpleLogin.logout()

        $scope.$on 'simpleLogin.update', (e, user) ->
            $scope.$apply ->
                $scope.current_user = user
