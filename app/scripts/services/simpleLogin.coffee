'use strict'

angular.module('sr5App')
    .service('simpleLogin', ['$rootScope', ($rootScope) ->
        simpleLogin = 
            current_user: null
            auth: null
            connect: (ref) ->
                db = new Firebase(ref)
                @auth = new FirebaseSimpleLogin db, (error, user) =>
                    if error
                        console.log error
                        @current_user = null
                    else if user
                        console.log 'logged in'
                        @current_user = user
                    else
                        console.log 'logged out'
                        @current_user = user
                    $rootScope.$broadcast 'simpleLogin.update', @current_user
            login: (email, password, rememberMe = true) ->
                @auth.login 'password',
                    email: email
                    password: password
                    rememberMe: rememberMe
            logout: ->
                @auth.logout()
        return simpleLogin
    ])