'use strict'

angular.module('sr5App')
    .service 'Inventory', class Inventory
        fields:
            melee: ['Name', 'Acc', 'Reach', 'Damage', 'AP', 'Avail', 'Cost']
            ranged: ['Name', 'Acc', 'Damage', 'AP', 'Mode', 'RC', 'Ammo', 'Avail', 'Cost']