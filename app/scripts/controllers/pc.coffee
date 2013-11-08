'use strict'

angular.module('sr5App')
    .controller 'PcCtrl', ($scope, simpleLogin, angularFire, rules) ->

        ref = new Firebase('https://sr5.firebaseio.com/rules')
        $scope.rules = {}
        angularFire(ref, $scope, "rules")

        get_pc = ->
            ref = new Firebase('https://sr5.firebaseio.com/pc/' + simpleLogin.current_user.md5_hash)
            $scope.pc = {}
            angularFire(ref, $scope, "pc")

        $scope.$on 'simpleLogin.update', (e, user) ->
            $scope.$apply ->
                get_pc() if user?

        $scope.physcialLimit = rules.physcialLimit
        $scope.mentalLimit = rules.mentalLimit
        $scope.socialLimit = rules.socialLimit

        $scope.skill_types =
            combat: 'danger'
            physical: 'success'
            technical: 'warning'
            social: 'info'
            magical: 'magical'
            knowledge: 'default'
            vehicle: 'vehicle'

        get_pc() if simpleLogin.current_user?