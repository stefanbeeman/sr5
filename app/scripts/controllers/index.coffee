'use strict'

angular.module('sr5App')
    .controller 'IndexCtrl', (simpleLogin, $scope) ->

        $scope.current_user = simpleLogin.current_user

        $scope.$on 'simpleLogin.update', (e, user) ->
            $scope.$apply ->
                $scope.current_user = user