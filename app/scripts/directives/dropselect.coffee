'use strict'

angular.module('sr5App')
    .directive('dropselect', () ->
        templateUrl: 'views/form/dropselect.html'
        restrict: 'E'
        transclude: true
        link: (scope, element, attrs) ->
            
            set_value = (li) ->
                element.find('a').find('span').text( li.text() )
                scope.$eval(element.attr('ngModel') + ' = \'' + li.attr('value') + '\'')
    
            first = element.find('li').eq(0)
            set_value(first)

            element.find('li').on 'click', ->
                li = angular.element(this)
                set_value(li)
    )