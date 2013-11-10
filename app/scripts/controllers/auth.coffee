'use strict'

angular.module('sr5App')
    .controller 'AuthCtrl', ($scope, $rootScope, angularFire, angularFireAuth) ->

        console.log 'AuthCtrl'

        $rootScope.pc = null
        $rootScope.user = null

        $scope.user_email = null
        $scope.user_password = null

        authRef = new Firebase("https://sr5.firebaseio.com/")
        angularFireAuth.initialize authRef,
            scope: $rootScope, 
            name: "user"

        $scope.$on 'angularFireAuth:login', (e, user) ->
            ref = new Firebase('https://sr5.firebaseio.com/pc/' + $scope.user.id)
            angularFire(ref, $rootScope, "pc").then ->
                $rootScope.$broadcast 'pc:get', $rootScope.pc

        $scope.login = ->
            if $scope.user_email? and $scope.user_password?
                angularFireAuth.login('password', 
                    email: $scope.user_email
                    password: $scope.user_password
                )
                $scope.user_email = null
                $scope.user_password = null