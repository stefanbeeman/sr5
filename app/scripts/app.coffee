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
            .when '/store/:model?/:item?/:action?',
                templateUrl: (params) ->
                    if params.action?
                        return 'views/store/form.html' if params.action is 'edit'
                        return 'views/store/list.html'
                    else if params.item?
                        return 'views/store/form.html' if params.item is 'add'
                        return 'views/store/item.html'
                    else if params.model?
                        return 'views/store/list.html'
                    else
                        return 'views/store/front.html'
                controller: 'StoreCtrl'
            .otherwise
                redirectTo: '/'
    )