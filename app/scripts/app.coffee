'use strict'

angular.module('sr5App', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'firebase',
])    
    .config( ($routeProvider) ->

        $routeProvider
            .when '/',
                templateUrl: 'views/main.html'
                controller: 'MainCtrl'
            .when '/pc',
                templateUrl: 'views/pc.html',
                controller: 'PcCtrl'
            .otherwise
                redirectTo: '/'
    )

    .run (simpleLogin) ->
        simpleLogin.connect('https://sr5.firebaseio.com/')