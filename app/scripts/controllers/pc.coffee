'use strict'

angular.module('sr5App')
    .controller 'PcCtrl', ($scope, angularFire, angularFireAuth, rules) ->

        ref = new Firebase('https://sr5.firebaseio.com/rules')
        $scope.rules = {}
        angularFire(ref, $scope, "rules")

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