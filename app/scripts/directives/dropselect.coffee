'use strict'

angular.module('sr5App')
    .directive('dropselect', () ->
        templateUrl: 'views/form/dropselect.html'
        controller: ($scope) ->
            $scope.text = ''

            $scope.setValue = (value) ->
                $scope.text = value
        scope:
            items: '=items'
        restrict: 'E'
        transclude: true
    )