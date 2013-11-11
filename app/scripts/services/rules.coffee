'use strict'

angular.module('sr5App')
    .service 'rules', class Rules
        physcialLimit: (stats) ->
            if stats?
                limit = stats.strength * 2
                limit += stats.body
                limit += stats.reaction
                limit = Math.ceil(limit/3)
                return limit
            else
                return 0

        mentalLimit: (stats) ->
            if stats?
                limit = stats.logic * 2
                limit += stats.intuition
                limit += stats.willpower
                limit = Math.ceil(limit/3)
                return limit
            else
                return 0

        socialLimit: (stats) ->
            if stats?
                limit = stats.charisma * 2
                limit += Math.floor(stats.essence)
                limit += stats.willpower
                limit = Math.ceil(limit/3)
                return limit
            else
                return 0