'use strict'

angular.module('sr5App')
    .service 'Inventory', class Inventory
        models:
            melee: 
                header: 'Melee Weapons'
                fields: ['Acc', 'Reach', 'Damage', 'AP']
                slot: 'melee'
            ranged: 
                header: 'Ranged Weapons'
                fields: ['Acc', 'Damage', 'AP', 'Mode', 'RC', 'Ammo']
                slot: 'ranged'

        renderDamageCode: (item) ->
            code = ''
            code += '(STR + ' if item.str
            code += item.damage
            code += ')' if item.str
            code += item.damageType
            code += '(' + item.damageElement + ')' if item.damageElement?
            return code