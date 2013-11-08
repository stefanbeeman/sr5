'use strict'

angular.module('sr5App')
    .controller 'AuthCtrl', (simpleLogin, $scope) ->

        $scope.user_email = null
        $scope.user_password = null

        $scope.login = ->
            if $scope.user_email? and $scope.user_password?
                simpleLogin.login($scope.user_email, $scope.user_password)
                $scope.user_email = null
                $scope.user_password = null