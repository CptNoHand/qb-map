# qb-map
qb-map is my first little resource for QBFramework

# Installation
just copy qb-map folder into your [qb] folder and edit the config.lua

# Add the map item
in qb-core/shared.lua add the item

```lua
['map']= {['name']='map',['label'] = 'Map',['weight'] = 1,['type'] = 'item',['image'] = 'map.png',['unique'] = true,['useable'] = true,['shouldClose'] = true,['combinable']=nil,['description']='A map that shows useful places'},
```

# Optional - disable default Blips

It's a bit tricky, because you have to find the right Parts in every script. Sometimes there is a CreateThread that sets the default blip and sometimes you can set the config to showBlip=false ...
