'use strict'

angular.module('sr5App')
    .controller 'MonitorCtrl', ($scope, simpleLogin, angularFire) ->
        get_pc = ->
            ref = new Firebase('https://sr5.firebaseio.com/pc/' + simpleLogin.current_user.id)
            $scope.pc = {}
            angularFire(ref, $scope, "pc")

        $scope.$on 'simpleLogin.update', (e, user) ->
            $scope.$apply ->
                get_pc() if user?

        get_pc() if simpleLogin.current_user?